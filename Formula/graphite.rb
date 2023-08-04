class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.0/gt-macos"
    sha256 "e6887d184d4c86cb62c5e595fae71032265450fdb4b3c4bea0c85232174ce61b"
    def install
      bin.install "gt-macos" => "gt"
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.0/gt-linux"
    sha256 "7d43739acb9e3dd5e4f299d9d0860541d5bd49356d6dcba861e2c7a2c802b9bf"
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
