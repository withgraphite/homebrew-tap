class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.1/gt-macos-arm64"
      sha256 "7a952f89f654aa8baf6e3bbe2872f78c9c75124145714dd618b9590b1acae254"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.1/gt-macos-x64"
      sha256 "fa6c1c599901b01c2bf28a2c3f47a23a1cae3b0a3dc4cc76fab524b58c228ecf"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.1/gt-linux"
    sha256 "a3a8c04568e026c69ecf0e02dcb5af78e38198976ae45daa9ef38047c44310f8"
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
