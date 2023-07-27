class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.5/gt-macos"
    sha256 "a649309e217bda011d7ef5f305b0d0151e823d28ae6922b8a972d410ea3e41f8"
    def install
      bin.install "gt-macos" => "gt"
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.5/gt-linux"
    sha256 "7870337bb33093a72563fd1abcdfed8826f36b1fbe803bddbff06b449ce8a016"
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
