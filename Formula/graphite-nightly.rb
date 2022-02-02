require "language/node"

class GraphiteNightly < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.16.71643839666-nightly.zip"
  sha256 "85a421fe77b7b9361ce5bc14de2f0166f6c72691aec21cd7eb8c95abbd7059e3"
  version "0.16.71643839666"
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
