require "language/node"

class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.3.0.zip"
  sha256 "bc47bae8e447ef389f3e1706d66c58947d991ea031a0592a51c3d5ed2c87bc3c"
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
