class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.0.12"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.12/gt-macos-arm64"
      sha256 "de6fd2291241a66aee70cfb66e329a5bc5fd59327bab90d5acc2412cade3cd78"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.12/gt-macos-x64"
      sha256 "cc43efd1c3b986d21c65bb757ae02daa90d6f707956342536ae527d716e00ccb"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.0.12/gt-linux"
    sha256 "39b69f2efadba4285685130648bc29e57318cce55bcf2d92b0bd470b181f3529"
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
