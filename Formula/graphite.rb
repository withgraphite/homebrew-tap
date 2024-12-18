class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.11"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.11/gt-macos-arm64"
      sha256 "5ea4b197089356c985e6ea500f08f09d8e8390f9abe74d725175413cedeaa76a"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.11/gt-macos-x64"
      sha256 "ac1ca9aa7c82817012feda39eb5f688d1df25885bd891465ec3f843d5ed695bd"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.11/gt-linux"
    sha256 "7e58df893b79e7c42845441cd71abf19e1637a3d9e8561f042f2835d967e172b"
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
