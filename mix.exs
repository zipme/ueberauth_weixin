defmodule UeberauthWeixin.MixProject do
  use Mix.Project

  def project do
    [
      app: :ueberauth_weixin,
      version: "1.0.3",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Publish package
      name: "Ueberauth Weixin",
      description: description(),
      package: package(),
      docs: docs()
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
      {:ueberauth, "~> 0.6"},
      {:jason, "~> 1.0"},
      {:oauth2, "~> 1.0"},
      {:ex_doc, "~> 0.20", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Wechat OAuth2 strategy for Überauth."
  end

  defp package do
    [
      name: :ueberauth_weixin,
      licenses: ["MIT"],
      exclude_patterns: [".DS_Store"],
      maintainers: ["goofansu"],
      links: %{"Github" => "https://github.com/elixir-wechat/ueberauth_weixin"}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end
end
