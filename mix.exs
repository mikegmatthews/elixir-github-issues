defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      version: "0.1.0",
      name: "Github Issues",
      source_url: "https://github.com/mikegmatthews/elixir-github-issues",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :httpoison, "~> 1.8.2" },
      { :poison, "~> 5.0.0" },
      { :ex_doc, "~> 0.28.5"},
      { :earmark, "~> 1.4"},
    ]
  end

  defp escript_config do
    [
      main_module: Issues.CLI
    ]
  end
end
