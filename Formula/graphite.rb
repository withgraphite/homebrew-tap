class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked pull changes and their pull requests."
  homepage "https://graphite.dev/"
  version "0.20.34"
  license "None"

  if OS.mac?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.34/gt-macos"
    sha256 "acf6a53b873703fcaa190293aae33a12a5db17e0bb21c3c3713e37d771c86de1"
    def install
      bin.install "gt-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.34/gt-linux"
    sha256 "61c19e9ceb2fe884b1f4f6eebaf96746ef048958c4f382a3c4dc82d6f1a95851"
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
