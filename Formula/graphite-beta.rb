class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.1/gt-macos-arm64"
      sha256 "a754c82d7722ea24c9ad7db3a9b83cb60e235c10c79c580bbdc39320a276c47f"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.1/gt-macos-x64"
      sha256 "561e8b36fd47a41cc6f7828beccd0c8bf8e7c0935ef7fb2fcd637a1bf4b64220"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.1/gt-linux"
    sha256 "865eff8820d412b3cc7ebae773b523b6922322402f45f675e369cc009e358137"
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
