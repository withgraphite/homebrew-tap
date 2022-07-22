require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/withgraphite/graphite-cli/archive/v0.20.4.zip"
  sha256 "b1933dbab0063ab7a9f9dfdea9c55281eac7e7e129f7277369b1538eebfe667f"
  version "0.20.4"
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
