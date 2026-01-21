class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.16"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.16/gt-macos-arm64"
      sha256 "edcd8b4bf51fb508584f6df66c8cea14856b1e0979381dba797446f151792c70"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.16/gt-macos-x64"
      sha256 "1267f56df294a90e63033081ecb2d6ab2ac8e69ed32b99b48d28410ec1db97e5"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.16/gt-linux"
    sha256 "ae73e4b98501d919a4f8a02bffeed1fb3e831fe32a8ef2055a9369389de375fe"
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
