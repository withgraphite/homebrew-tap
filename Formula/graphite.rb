require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/withgraphite/graphite-cli/archive/v0.20.8.zip"
  sha256 "477cffc049c37809bc3124efd1865fe55c6f994e1ff2d8a486dc92386c3dd521"
  version "0.20.8"
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
