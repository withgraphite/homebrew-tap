require "language/node"

class GraphiteNightly < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.17.31646863771-nightly.zip"
  sha256 "0aaf7cef54b422ac79878884180cba1c1c1db8a768c2c65f8cb9e124a1c78212"
  version "0.17.31646863771"
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
