defmodule MixCleanProtocols.MixProject do
  use Mix.Project

  def project do
    env_var = case System.get_env("CONSOLIDATE") do
      "true" -> true
      "false" -> false
      _ -> raise "Please set the CONSOLIDATE env var to \"true\" or \"false\""
    end
    [
      apps_path: "apps",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      consolidate_protocols: env_var,
      my_consolidate_protocols: env_var,
      deps: deps()
    ]
  end

  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end
end
