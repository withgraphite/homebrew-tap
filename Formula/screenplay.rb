require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "https://github.com/screenplaydev/screenplay-cli/archive/v0.7.0.zip"
  sha256 "34e49f9fbc1adba02ee855603860b3e4ba6a4a0f0390096e7805296c2a5b0c88"
  license "None"

  depends_on "node"

  def install
    pack = pack_for_installation

    system "npm --cwd \"#{Dir.pwd}/#{pack}/screenplay-libs/retype\" install"
    system "npm --cwd \"#{Dir.pwd}/#{pack}/screenplay-libs/shared_routes\" install"
    system "npm --cwd \"#{Dir.pwd}/#{pack}/screenplay-libs/xcodejs\" install"
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
