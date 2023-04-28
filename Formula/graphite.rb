class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  version "0.20.18"
  license "None"

  if OS.mac?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.18/gt-macos"
    sha256 "2237b0526d6b4da320d34876b549e883d0deff05000ae27eeddb42e9a96ed334"
    def install
      bin.install "gt-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.18/gt-linux"
    sha256 "04e869243dfd0128d89266bfc87b02910c7670fc3244e995716ca30ca2bb80b0"
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
