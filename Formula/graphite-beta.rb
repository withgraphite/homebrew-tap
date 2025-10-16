class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.3/gt-macos-arm64"
      sha256 "f91aee5b45e773914ed909674d4917a108f7a10ca97cd7cd49de921b8bd903ec"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.3/gt-macos-x64"
      sha256 "c153802900bd517ca95b020e5c05e47e0ac11ff0e86985f067ab89bc51f0cfae"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.3/gt-linux"
    sha256 "a37f4f77ea79e24160c51d8325612ef831fcdba931cd3c9383efaa07712d7b96"
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
