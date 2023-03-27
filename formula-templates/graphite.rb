class Graphite < Formula
  desc "The Graphite CLI allows you to easily manage your stacked-diff workflow."
  homepage "https://graphite.dev/"
  version "{{version}}"
  license "None"

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
