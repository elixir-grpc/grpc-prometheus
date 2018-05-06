defmodule GRPCPrometheus.MixProject do
  use Mix.Project

  def project do
    [
      app: :grpc_prometheus,
      version: "0.1.0",
      elixir: "~> 1.4",
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
      {:prometheus, "~> 4.0"},
      {:prometheus_ex, "~> 3.0"},
      {:grpc, github: "tony612/grpc-elixir", branch: "support-interceptor", optional: true}
    ]
  end
end
