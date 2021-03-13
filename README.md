# MixCleanProtocols

It appears that running tests with code coverage will use consolidated protocols (if they exist) regardless if protocol consolidation is enabled.
You can test this by running `./bin/test_coverage.sh`.

The first test (without protocol consolidation) will pass as expected (protocols will not be consolidated).

The second test (now with protocol consolidation) will pass as expected (protocols will be consolidated).

The third test (again without protocol consolidation) will NOT pass, since it will register that protocols are consolidated, even though the mix.exs says that it shouldn't be.

Mix clean does not prevent this, the only way to get elixir to not use the consolidated protocols is to delete `_build/*/consolidated`.

This is not the case without code coverage as demonstrated by `./bin/test.sh`.
