class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.7/gt-macos-arm64"
      sha256 "668a57e1bd3a1ef7a8a4734906b3aa6ac14159c6caa18c88f319209d367e69c6"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.7/gt-macos-x64"
      sha256 "f245e3297434bd30512278d41edd78829646e6c5997df47ef35ac727a54e0a94"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.7/gt-linux"
    sha256 "846e69af5deaacb01cc1265308e22a91abb8ae8538f048a95bf6d8caa7b0a5e6"
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
