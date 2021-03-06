defmodule Combine.Mixfile do
  use Mix.Project

  def project do
    [app: :combine,
     version: "0.9.3",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "A parser combinator library for Elixir projects.",
     package: package(),
     deps: deps(),
     docs: [source_url: "https://github.com/bitwalker/combine/"]]
  end

  def application, do: [applications: []]

  defp deps do
    [{:ex_doc, "~> 0.13", only: [:dev, :docs]},
     {:earmark, "~> 1.0", only: [:dev, :docs]},
     {:benchfella, "~> 0.3", only: :dev},
     {:dialyze, "~> 0.2", only: :dev}]
  end

  defp package do
    [ files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Paul Schoenfelder"],
      licenses: ["MIT"],
      links: %{ "Github": "https://github.com/bitwalker/combine" } ]
  end
end
