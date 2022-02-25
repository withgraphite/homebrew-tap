require "language/node"

class GraphiteNightly < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.17.31645826932-nightly.zip"
  sha256 "3142d0c29eb1776447ffcb822ca7cadc2dbc1ef03bfb41e0caf048a85a6486c9"
  version "0.17.31645826932"
  license "None"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
