require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "https://github.com/screenplaydev/screenplay-cli/archive/v0.8.0.zip"
  sha256 "ac671d64006b38b3509ca813b1eeaec6bb0c6ca2ab56d02fee855746c6560020"
  license "None"

  depends_on "node"

  def install
    system "npm", "install", "--cwd", "#{Dir.pwd}/screenplay-libs/retype", *Language::Node.local_npm_install_args
    system "npm", "install", "--cwd", "#{Dir.pwd}/screenplay-libs/shared_routes", *Language::Node.local_npm_install_args
    system "npm", "install", "--cwd", "#{Dir.pwd}/screenplay-libs/xcodejs", *Language::Node.local_npm_install_args
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
