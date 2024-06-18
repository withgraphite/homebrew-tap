class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.3.9"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.9/gt-macos-arm64"
      sha256 "648674fd59657df2835041d199f54eff712ed8dd0763b37c065d747fcacac587"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.9/gt-macos-x64"
      sha256 "541f0f3eb8befc1ac0018213cf83496436e81b35cfcc3bf08cbbe33bb66bfd2b"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.3.9/gt-linux"
    sha256 "0372dd12770d4d91e04a806f08b2c39c109c108fc32d3027139199bad7121af8"
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
