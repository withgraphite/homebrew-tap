class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.0/gt-macos-arm64"
      sha256 "a7e6d7b65410d5854061ec306390f9aa0edb613b51ffaaecfbfc2afd0eb594d4"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.0/gt-macos-x64"
      sha256 "3305320aefbdd66782abe83dd3d6f5200a690621c1831230118e6da673631597"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.0/gt-linux"
    sha256 "783acbda572b501755f8d46227487692866c6b6e8decc681408b77e70c2c2d0b"
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
