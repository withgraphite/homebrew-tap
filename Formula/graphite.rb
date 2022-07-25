require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/withgraphite/graphite-cli/archive/v0.20.6.zip"
  sha256 "ab1ce9e7a801a905e21f39d0395891afffd79d66a5299650ff0001f3158feb29"
  version "0.20.6"
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
