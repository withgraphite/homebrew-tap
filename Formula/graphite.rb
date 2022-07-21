require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/withgraphite/graphite-cli/archive/v0.20.3.zip"
  sha256 "96e83e0b73bc6b1fb3e961541aba31f372bfc998c9925a17fb1026e3a353968d"
  version "0.20.3"
  license "None"

  depends_on "node@16"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
