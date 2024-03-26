class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.2/gt-macos-arm64"
      sha256 "4d1b3dc2f24e571d056c7a7ba787aa3251755b51ebd19a39b0e3de442148540f"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.2/gt-macos-x64"
      sha256 "92015aa86d9c8fc908d1d503cf188937c0836cf75ce777010bad48ad2b8df298"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.2/gt-linux"
    sha256 "6cb669472fed494c2386f760ec2076e93157c17f7b56077e7e6e148aa9b5421c"
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
