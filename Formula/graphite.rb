class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.4/gt-macos"
    sha256 "be670b121724f640cc6e319681fe55cb8330f5eec26e9889175ea22ac2fae04e"
    def install
      bin.install "gt-macos" => "gt"
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.4/gt-linux"
    sha256 "73eaa6aa808b7e6440bec3afc1244f5143b8a1bd341163f98e4691c51bc6b19f"
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
