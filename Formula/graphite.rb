class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.14"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.14/gt-macos-arm64"
      sha256 "8eaf5a066bc4d2369917ee2db96797d00e524c6840e5a9fb873f10857bb6fa2f"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.14/gt-macos-x64"
      sha256 "b16e6b4f084777afe32dafb37e266dcb10a6e6bb33141c2520ac600681edf3f6"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.14/gt-linux"
    sha256 "f5f3be0c68bc3784854ec9d66efe6740b7e8490203c78847c72d9a95805fc1ac"
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
