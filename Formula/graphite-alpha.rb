class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.1/gt-macos-arm64"
      sha256 "dbc000f5c4ee7690814c7c1126c20f9717e9e20396c07b88d98665ff72fa12ea"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.1/gt-macos-x64"
      sha256 "fcdd3b00ccb7cb6235a8f4489dc0cab8216208e9fb3a3aaf40d8bcda64a9ae35"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.1/gt-linux"
    sha256 "afbcc7da4eff97a6b1e564c656208da6f8d08ed3c2639b7d4c329bb1c77d1ae0"
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
