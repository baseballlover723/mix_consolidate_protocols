defmodule App1.MixProject do
  use Mix.Project

  def project do
    env_var = case System.get_env("CONSOLIDATE") do
      "true" -> true
      "false" -> false
      _ -> raise "Please set the CONSOLIDATE env var to \"true\" or \"false\""
    end
    [
      app: :app1,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.12-dev",
      start_permanent: Mix.env() == :prod,
      consolidate_protocols: env_var,
      my_consolidate_protocols: env_var,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {App1.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
    ]
  end
end
