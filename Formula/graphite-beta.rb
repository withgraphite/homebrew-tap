class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.4/gt-macos-arm64"
      sha256 "ac49ceaf31d3d49eefc1868f517fc66f34c02a4d5ec0ead5c9937227c7e608c6"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.4/gt-macos-x64"
      sha256 "3c54f135388cf40479f6878b08beefa4666ad43bd928dbec4c36cbfe2294b372"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.4/gt-linux"
    sha256 "f61d0b42901c8228c28a91f8612849b2cf59f80af6f24c5833c40e531eccbd27"
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
