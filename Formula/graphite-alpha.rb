class GraphiteAlpha < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.7.9"

  deprecate! date: "2025-11-21", because: "As of 11/21/2025, we discontinued the Alpha stage of the release cycle. The CLI will initially release to Beta stage and then graduate to Stable.", replacement_formula: "graphite-beta"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.9/gt-macos-arm64"
      sha256 "38578b180151db3cbee675a395ed83595cc8603475c649f7648b853d54e6689e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.9/gt-macos-x64"
      sha256 "4d914be7981e40513c68b6551c5c693e32c987d432a7633eaeb40b37477b9933"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.7.9/gt-linux"
    sha256 "82204e3274b8ba89a41645b04c50dc4630a551add0e4cf740f39c52dea2801ec"
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
