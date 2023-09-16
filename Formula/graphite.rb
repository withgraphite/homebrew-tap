class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.3/gt-macos-arm64"
      sha256 "51639bb75d73b947c2c07466c453f6ff0967f096b1ea2fbcf0cb062ae2bb049a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.3/gt-macos-x64"
      sha256 "d43df42aca2a749806ac02426154cd9897fe4712dcce965bdf36c6faec94d1a9"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.3/gt-linux"
    sha256 "34c249915b87ce3a31dd377ede317c7a97ad1a8e40af876dbde32f4ddd0070ae"
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
