class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.6/gt-macos-arm64"
      sha256 "5cd5d733ad3dbc0d94484433f09f302938d496049b92b7ef43f8d03d1628e0fe"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.6/gt-macos-x64"
      sha256 "fae2cfe902467fdf671450d1711ec8aaf2b479480257d5e6926aebf4c0f79476"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.6/gt-linux"
    sha256 "bb041cf68a20d130ad51b1bf0ae524fe56f0a46aa5d42820e1bb98b37187f1f5"
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
