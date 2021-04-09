require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "https://github.com/screenplaydev/screenplay-cli/archive/v0.31.0.zip"
  sha256 "a35b0dab76def91a46dc01e2cc143dc4c94802422af9ef77cee4059b3fd11bcc"
  license "None"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/retype", *Language::Node.local_npm_install_args
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/shared_routes", *Language::Node.local_npm_install_args
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/xcodejs", *Language::Node.local_npm_install_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
