class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.4/gt-macos-arm64"
      sha256 "33217e0a14148b29162ac4509a82291ac08138e3a0bb03a55e4a07c95d51e6ad"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.4/gt-macos-x64"
      sha256 "86fbef14c74aad36d72c5447c69980683f32c0833ade48c55d09c4298677efde"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.4/gt-linux"
    sha256 "560c6768b34ad94fd4781b99616c92d1bbf98bde784730b06ae39f02a00ce25d"
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
