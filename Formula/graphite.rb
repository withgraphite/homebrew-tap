class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.5/gt-macos-arm64"
      sha256 "068ab202c4240a7b20168b25760e122c1fbec3c6ab4f22d3c4ace7d384683053"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.5/gt-macos-x64"
      sha256 "f91cde223f5a2edb081ca3c7126d7f30187e39c822a0602783bc309830356bba"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.5/gt-linux"
    sha256 "c4580616de06a65cabb3df2e30def7bbdfe15fc113ff8f756a484fa0c1375355"
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
