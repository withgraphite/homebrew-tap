class Graphite{{classNameSuffix}} < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "{{version}}"

  if OS.mac?
    if Hardware::CPU.arm?
      url "{{urlMacArm64}}"
      sha256 "{{shasumMacArm64}}"
      def install
        bin.install "gt-macos-arm64" => "gt"
      end
    else
      url "{{urlMacX64}}"
      sha256 "{{shasumMacX64}}"
      def install
        bin.install "gt-macos-x64" => "gt"
      end
    end
  end

  if OS.linux?
    if Hardware::CPU.arm?
      url "{{urlLinuxArm64}}"
      sha256 "{{shasumLinuxArm64}}"
      def install
        bin.install "gt-linux-arm64" => "gt"
      end
    else
      url "{{urlLinux}}"
      sha256 "{{shasumLinux}}"
      def install
        bin.install "gt-linux" => "gt"
      end
    end
  end

  test do
    raise "Test not implemented."
  end
end
