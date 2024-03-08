class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.2.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.7/gt-macos-arm64"
      sha256 "70c9e617cbe2a1e372ddd3374415827e72cbfc0acccdc6039f63187795caba3e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.7/gt-macos-x64"
      sha256 "1070ce06904f3578eb9f79e41980deee0f58fadfac6eccdfa54bb6f6067434ea"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.2.7/gt-linux"
    sha256 "67d45a9e04e766a23caf811bd3b7be9b650809fab652a50f3168b9c2230ac47f"
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
