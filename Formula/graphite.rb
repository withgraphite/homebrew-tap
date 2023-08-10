class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url ""
      sha256 "68439cae95caf8226d1c1388059a1c66f951535c48e936cd01f7455b5c3d0d68"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.1/gt-macos-x64"
      sha256 "cb09b7699a8c3b40ab8d68cb5ff4285e460a8f00df080b1d35a5d86934ce2ea9"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.22.1/gt-linux"
    sha256 "e78e0705fa586d531b9c956f3d8e77cc6e7eb28d84526c08746a122c1b89ce7d"
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
