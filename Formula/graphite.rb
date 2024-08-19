class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.4.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.3/gt-macos-arm64"
      sha256 "05982042a75f021c5ad1ef4e0fe4a0299110754155a1a1303aee7df2bceb3a2e"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.3/gt-macos-x64"
      sha256 "13c083e455dfc6788c3e1127cb81195afac6a8305bd9d1f98248f5d8bd94e11a"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.4.3/gt-linux"
    sha256 "786afbd7a58b7b710a4c707fe90ba0a3e0c8844e9c4cd54ba4dc2a4b9f206c70"
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
