class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.6/gt-macos-arm64"
      sha256 "18cc2b549af7559d10a6c3ff180616035a353944337ec079ab86e1f0aaf8a2ee"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.6/gt-macos-x64"
      sha256 "21fa091b9fed17589cfb4062aa57bb7949e46e6d36760abb3fac6bbb818d72e9"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.6/gt-linux"
    sha256 "1bcd7d140c89261bded88f68e92f07d75cb25c09a374af9bcd5f3e09d80e5b3b"
    def install
      bin.install "gt-linux" => "gt"
    end
  end

  # TODO
  # Hardware::CPU.intel?
  # Hardware::CPU.arm?
  # Hardware::CPU.is_64_bit?

  test do
    raise "Test not implemented."
  end
end
