defmodule LoginServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :login_server,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {LoginServer.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:session_manager, in_umbrella: true},
      {:world_manager, in_umbrella: true},
      {:elven_gard, github: "imnotavirus/elvengard_v2"}
    ]
  end
end
