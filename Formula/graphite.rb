class Graphite < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"

  if OS.mac?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.0/gt-macos"
    sha256 "b498330dbfea3810ec0822d4d106f69fe8182c9a0eefbb8b9b794500c22cc573"
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v0.21.0/gt-linux"
    sha256 "ea22d355da93c59300ee83ac9ef58d63126c41a80d9a39076a5de9420ae789d9"
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
