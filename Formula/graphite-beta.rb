class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-macos-arm64"
      sha256 "7972e785f18f5f37b35afc2180497a02a3f67601a278e14d4d23e0d98cf4e72e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-macos-x64"
      sha256 "5a4ac5eb60b7e9ea73800204c7010ba7e96dfc2b243919e74f9694cc28002ed6"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.0/gt-linux"
    sha256 "1fa48e4dc23b33ac20136eb316bedb31ffd3967ecbb466b37fc9376b8dca6e2d"
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
