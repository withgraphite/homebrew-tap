class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.0-rc2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0-rc2/gt-macos-arm64"
      sha256 "55c1a37d1324c448fe4784f8a3bada7894afb90fb5c938f1de3445f917726b80"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0-rc2/gt-macos-x64"
      sha256 "762859d7cc08625fbabdeef68d5c56bfbdcd641cf0aa5597014e6af16e1a947b"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0-rc2/gt-linux"
    sha256 "326263ed7774acab68cf6e77e10529ba1719e9ac4571e152a30b9f59f4c3cd8d"
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
