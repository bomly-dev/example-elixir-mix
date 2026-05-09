defmodule ExampleElixirMix.MixProject do
  use Mix.Project

  def project do
    [
      app: :example_elixir_mix,
      version: "1.0.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      # plug 1.7.0: older release; runtime dependency
      {:plug, "~> 1.7.0"},
      # jason 1.2.2: JSON parser; runtime dependency
      {:jason, "~> 1.2"},
      # cowboy 2.9.0: HTTP server; runtime transitive dep pulled in by plug
      {:cowboy, "~> 2.9"},
      # credo: dev-only static analysis tool
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end
end
