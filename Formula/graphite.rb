class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.16"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.16/gt-macos-arm64"
      sha256 "5a85522419371a91ec25e64cae11b49d6cf8806d0a2a337498dede5bb1854b93"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.16/gt-macos-x64"
      sha256 "d39e422225eb94b9ac78379cdc6b38d4cbcb26a599f918437b3e9507a059ea02"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.16/gt-linux"
    sha256 "4b476bddabe27aae1d76afe3e2eb57ac766137d2d0adc154eb60502287d74065"
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
