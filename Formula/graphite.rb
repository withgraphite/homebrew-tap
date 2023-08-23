class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "0.22.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.5/gt-macos-arm64"
      sha256 "c69a51f9d081994354c01f49d78471d83847de3f128ff567c562843866c6f671"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.5/gt-macos-x64"
      sha256 "42a114e26f5640302028cc66273e54a5bca9d7a943302d848d86c70614ebeab2"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.5/gt-linux"
    sha256 "614023f2ba18e3d9f66f4af62c75b81468249171264bd6dfbcb47f4607bdcf3d"
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
