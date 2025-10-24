class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.5/gt-macos-arm64"
      sha256 "ea6580c044354e1132e5d53bd15df6eaadae55ee36c2e78a5355e0dfe4284aeb"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.5/gt-macos-x64"
      sha256 "ff96faed25d9cc609d2996df834d6ff419613d14ae10f0f0f7fe5240f2a28299"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.5/gt-linux"
    sha256 "eb4537a1d9845a8043e4d371f3786a051a18166114466235b187e4bbd2123a11"
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
