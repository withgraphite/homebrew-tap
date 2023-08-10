class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.1/gt-macos-arm64"
      sha256 "5818deebf813121ffd42a68a5e6846b3b7e78d8a9fafe7397ab1e3965ea51887"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.1/gt-macos-x64"
      sha256 "62541d553ca7db9169e290c75a55937ad7484e16b3244cfe60312b4a6a416517"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.1/gt-linux"
    sha256 "ff7791292e6d87f51ce6ee8e511cca6ac0ac38857eff9c30e15278aa047d4cbf"
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
