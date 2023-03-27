class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  version "0.20.16"


  if OS.mac?
    url "https://github.com/withgraphite/graphite-cli/releases/download/pkg-exp/graphite-cli-macos"
    sha256 "7ddddd7ba9856eaaa64e1480f91be33afed1bfafdc0078ca5b11dd36b59746f4"
    def install
      bin.install "graphite-cli-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/withgraphite/graphite-cli/releases/download/pkg-exp/graphite-cli-linux"
    sha256 "95148e245837dc6fdb25fa086bde7893671110865ddd2db9c41952c7ba60b1a7"
    def install
      bin.install "graphite-cli-linux" => "gt"
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
