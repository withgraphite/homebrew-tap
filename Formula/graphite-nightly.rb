require "language/node"

class GraphiteNightly < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  url "https://github.com/screenplaydev/graphite-cli/archive/v0.17.91650060548-nightly.zip"
  sha256 "d4ba8bfacd9a9b0201946bc59135224635e91f176a82f774a79b7a023657d5c6"
  version "0.17.91650060548"
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
