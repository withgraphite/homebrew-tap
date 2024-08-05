class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.2/gt-macos-arm64"
      sha256 "7640b794721c0aa681f4e3f726cae52cdd45e43be323932e8a70129679f4f68a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.2/gt-macos-x64"
      sha256 "3b36a8bfbd1cbfbdac43e80bec44e3218f3a2ea4752093767d5a123e9bca261e"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.2/gt-linux"
    sha256 "4c49fa2bcce6bf253d333a051267c5beffd75e0e4bc4391e78e201de46656714"
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
