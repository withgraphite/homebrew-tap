class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.6.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.0/gt-macos-arm64"
      sha256 "61389591496eaf15c8c9b36a06f7191ffb31bf83ca406e8bae02b30b57f2602e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.0/gt-macos-x64"
      sha256 "a3a607ac0df93f868a5cdda78cb61807aa73ac3fb7010d00043799af7a477896"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.6.0/gt-linux"
    sha256 "f7678951fffc2fbee464016cd471c4820641ea35b4c6f476a863480b6e690cd9"
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
