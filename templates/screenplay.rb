require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "{{url}}"
  sha256 "{{shasum}}"
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
