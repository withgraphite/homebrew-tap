class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.18"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.18/gt-macos-arm64"
      sha256 "cd03dd333852330eba033fefb0e83c26843b8d0e87797701421d80104b0f40af"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.18/gt-macos-x64"
      sha256 "d79f3287bae4ef3e9d9eac21d7e0a623aedbe150726662bb747fa66ec82a1bf0"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.18/gt-linux"
    sha256 "d031460b124449500913b608bbe8f5956dcaae0493c7cc1898b848c9d1a1ccaa"
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
