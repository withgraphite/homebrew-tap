class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.2/gt-macos-arm64"
      sha256 "8254a08f49514634ac986ab45f92d4ebb9c150b2b905db7c5bc0ca3be5511de3"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.2/gt-macos-x64"
      sha256 "545e706a76c8a5e0d8409f447e6c1a15760af0cfc0118065c0bc352134f1d206"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.2/gt-linux"
    sha256 "2fba5470ab967a85399a3c62f9cb1746092431559b0cd3bc02c883df2140a361"
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
