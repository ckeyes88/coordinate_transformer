defmodule CoordinateTransformer.Mixfile do
  use Mix.Project

  def project do
    [app: :coordinate_transformer,
     version: "0.0.1",
     description: description(),
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    A small library of composable to manipulate 3-D cartesian coordinates using transformation matrices 
    and matrix multiplication.
    """
  end

  defp package do
    [
      name: ["Coordinate Transformer"],
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Chip Keyes"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/ckeyes88/coordinate_transformer"}
    ]
  end
end
