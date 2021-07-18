require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.1.0.zip"
  sha256 "eada2e2bf4cf00d8d9d49e4951bb471f0547e767df844291a262874a90d642f9"
  license "None"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
  end

  test do
    raise "Test not implemented."
  end
end
