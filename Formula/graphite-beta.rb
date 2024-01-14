class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.1.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.1/gt-macos-arm64"
      sha256 "a25a41508cd73ac88b280feba1bec99b1963b2ff1d22bafb11acb7348d8f8f8b"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.1/gt-macos-x64"
      sha256 "5f64a660a58f484c6598351aa98256e8bebe4b6d036be588de40430d15e99afc"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.1.1/gt-linux"
    sha256 "04e81368bf3601c72bd902696fa7aadc5a9d31257c38f6eaf8d96e0e63fee67a"
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
