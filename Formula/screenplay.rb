require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "https://github.com/screenplaydev/screenplay-cli/archive/v0.35.6.zip"
  sha256 "14d0fb31a0ec8c28848aa2aa3c71824f5ab451cde6e3c197115aceb4481cfb37"
  license "None"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/retype", *Language::Node.local_npm_install_args
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/shared_routes", *Language::Node.local_npm_install_args
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/xcodejs", *Language::Node.local_npm_install_args
    system "npm", "install", "--prefix", "#{libexec}/lib/node_modules/screenplay-cli/screenplay-libs/splog", *Language::Node.local_npm_install_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
