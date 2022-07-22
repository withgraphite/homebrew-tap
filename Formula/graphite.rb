require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/withgraphite/graphite-cli/archive/v0.20.5.zip"
  sha256 "50f3445bfae07fad632742b1efc5a152323e88d0c1953791662c3f7ca33d1340"
  version "0.20.5"
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
