class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "{{urlMac}}"
    sha256 "{{shasumMac}}"
    def install
      bin.install "gt-macos" => "gt"
    end
  end

  if OS.linux?
    url "{{urlLinux}}"
    sha256 "{{shasumLinux}}"
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
