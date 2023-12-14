class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.13"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.13/gt-macos-arm64"
      sha256 "84825574b136b1a6b358429e1389d51dc9facfba70f47563a1ece1658273a716"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.13/gt-macos-x64"
      sha256 "365ed1708dc4e52f5a4c16af358822f38a08f12444f323e286947710948ff926"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.13/gt-linux"
    sha256 "3cc31743b20ad577ecaaeed7b061f4da44d2db821380c602a6b17f84c4f6aa97"
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
