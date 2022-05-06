require "language/node"

class GraphiteNightly < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.18.01651874913-nightly.zip"
  sha256 "0d63df0a88c453b0d8f7d06fed49315bdb7894f9c35baad0cebeb3218a51da30"
  version "0.18.01651874913"
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
