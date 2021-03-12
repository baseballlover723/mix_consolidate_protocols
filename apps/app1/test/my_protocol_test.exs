defmodule MyProtocolTest do
  use ExUnit.Case

  should_be_consolidated = Keyword.get(Mix.Project.config(), :my_consolidate_protocols)
  IO.puts("Protocols #{if should_be_consolidated, do: "should", else: "should not"} be consolidated per mix.exs")
  if Keyword.get(Mix.Project.config(), :my_consolidate_protocols) do
    test "protocols are consolidated when consolidate_protocols is true" do
      IO.inspect(Protocol.consolidated?(MyProtocol), label: "MyProtocol is consolidated")
      assert Protocol.consolidated?(MyProtocol)
    end
  else
    test "protocols are not consolidated when consolidate_protocols is false" do
      IO.inspect(Protocol.consolidated?(MyProtocol), label: "MyProtocol is consolidated")
      refute Protocol.consolidated?(MyProtocol)
    end
  end

end
