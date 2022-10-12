class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "{{urlMac}}"
    sha256 "{{shasumMac}}"
  end

  if OS.linux?
    url "{{urlLinux}}"
    sha256 "{{shasumLinux}}"
  end

  def install
    if OS.mac?
      bin.install "gt-macos" => "gt"
    elsif OS.linux?
      bin.install "gt-linux" => "gt"
    end

    chmod 0555, bin/"gt"
    generate_completions_from_executable(bin/"gt", "completion", shells:                 [:bash, :zsh, :fish],
                                                                 shell_parameter_format: :none)
  end

  # TODO
  # Hardware::CPU.intel?
  # Hardware::CPU.arm?
  # Hardware::CPU.is_64_bit?

  test do
    raise "Test not implemented."
  end
end
