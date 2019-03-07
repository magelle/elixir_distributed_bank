defmodule ElixirDistributedBank.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_distributed_bank,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirDistributedBank.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_mnesia, "~> 0.9.0"}
    ]
  end
end
