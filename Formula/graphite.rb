class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  version "0.20.22"
  license "None"

  if OS.mac?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.22/gt-macos"
    sha256 "e522da7fc73a4339061c2cc5898c91e733cfe9af73836b0c6e9b8317dd35c511"
    def install
      bin.install "gt-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.22/gt-linux"
    sha256 "bf451c37cd8d05759010f3d9eb7d6472e36cf5ed5595cdf6b9f7eb2192aaca1b"
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
