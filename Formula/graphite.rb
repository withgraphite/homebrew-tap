class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.4/gt-macos-arm64"
      sha256 "bfd4d8a656c4dc0ea939d1b4ae77271bdb81c11738cf9139abb2864dd373a815"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.4/gt-macos-x64"
      sha256 "400a553daa88328f97b8736c2f048b4e1a79d9f9198158a09dd08d48f7f481e2"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.4/gt-linux"
    sha256 "e65d3ad7e0c15c8349c0a5812a3a31105464cc8560e8089dbc27f8cef9a1aa73"
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
