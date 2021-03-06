defmodule ThreeReader.MixProject do
  use Mix.Project

  def project do
    [
      app: :three_reader,
      version: "2010.3.20",
      author: "Samuel Wilson",
      license: "The Unlicense",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: [main_module: ThreeReader]
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
      {:httpoison, "~> 1.7"},
      {:quinn, "~> 1.1"}
    ]
  end
end
