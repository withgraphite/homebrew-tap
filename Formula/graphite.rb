class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  version "0.20.21"
  license "None"

  if OS.mac?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.21/gt-macos"
    sha256 "7d4f2dd797e105cc1d801ad5ab84d0faaa43abf434cb40997f68f198d9eb337d"
    def install
      bin.install "gt-macos" => "gt"
    end  
  end

  if OS.linux?
    url "https://github.com/withgraphite/graphite-cli/releases/download/v0.20.21/gt-linux"
    sha256 "14f66826a75728e7e09f00e41fbc4f4c11395eb03ca5cdbe34789c065d640c10"
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
