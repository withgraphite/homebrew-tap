require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "https://github.com/screenplaydev/screenplay-cli/archive/v0.17.0.zip"
  sha256 "2d36998cb6e9bd4140587b5aed4b7a6a520ceff0bea8ce73bc316579aee5b9cd"
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
