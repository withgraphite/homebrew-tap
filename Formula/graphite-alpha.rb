class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.0/gt-macos-arm64"
      sha256 "28255311cafcb249822466d8ae5e65d832ffcd86d7fb226e9855de0e2bb64c4e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.0/gt-macos-x64"
      sha256 "8e5ea26a85210d6d4396c991893f96fb9118bc132201001b342425a899c77c39"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.0/gt-linux"
    sha256 "ceaf5a0c717504d86063e12479d15a2e4a92f51fc8a4f4600dfca5a270c5bc01"
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
