class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.2/gt-macos"
    sha256 "68427230d357864924aeedb23852b541c541dc87c6c1c629b70ac136ddd8e456"
    def install
      bin.install "gt-macos" => "gt"
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.2/gt-linux"
    sha256 "5ae5bf06be825bbe6caf42f625c1de43acb9d1264f98a51982fd19af6911fa6b"
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
