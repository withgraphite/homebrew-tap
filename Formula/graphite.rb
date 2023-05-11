class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  version "0.20.19"
  license "None"

  if OS.mac?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.19/gt-macos"
    sha256 "fc70e83a7631192ab7d9f103866711f1c2bc2511f45ee86bababe5060c4746c7"
    def install
      bin.install "gt-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.19/gt-linux"
    sha256 "259048bd1dd8be6818dd14630e6b3cb6f7f2e19e71aa54df10fea494ec2644a2"
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
