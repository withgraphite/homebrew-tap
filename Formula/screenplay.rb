require "language/node"

class Screenplay < Formula
  desc "The Screenplay CLI allows you to add Screenplay (https://screenplay.dev) to existing xcode projects."
  homepage "https://github.com/screenplaydev/screenplay-cli/"
  url "https://github.com/screenplaydev/screenplay-cli/archive/v0.6.0.zip"
  sha256 "fcc80658e15f0ebbe4ee12898427dae3d89d9067899dd9751bc64298f6c7ffd2"
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
