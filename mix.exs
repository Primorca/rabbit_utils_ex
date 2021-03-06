defmodule RabbitUtils.MixProject do
  use Mix.Project

  def project do
    [
      app: :rabbit_utils,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README", "LICENSE*"],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :amqp, :gproc]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:amqp, "~> 1.0"},
      {:gproc, "~> 0.8.0"},
      {:ranch_proxy_protocol, "~>2.0", override: true}
    ]
  end
end
