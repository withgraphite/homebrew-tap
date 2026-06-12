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
        install_shell_completions
      end
    else
      url "{{urlMacX64}}"
      sha256 "{{shasumMacX64}}"
      def install
        bin.install "gt-macos-x64" => "gt"
        install_shell_completions
      end
    end
  end

  if OS.linux?
    url "{{urlLinux}}"
    sha256 "{{shasumLinux}}"
    def install
      bin.install "gt-linux" => "gt"
      install_shell_completions
    end
  end

  # gt is built on yargs, which emits completions for bash and zsh only,
  # selected via the SHELL env var (which
  # generate_completions_from_executable sets per shell). The emitted zsh
  # script only registers the completer when first autoloaded, so append an
  # invocation to make the first <Tab> of a session complete
  # (https://github.com/yargs/yargs/issues/2402).
  def install_shell_completions
    # The downloaded artifact has no exec bit, and Homebrew normalizes
    # permissions only after install, so set it before executing gt.
    chmod 0555, bin/"gt"
    generate_completions_from_executable(bin/"gt", "completion",
                                         shells:                 [:bash, :zsh],
                                         shell_parameter_format: :none)
    (zsh_completion/"_gt").append_lines '_gt_yargs_completions "$@"'
  end

  # TODO
  # Hardware::CPU.intel?
  # Hardware::CPU.arm?
  # Hardware::CPU.is_64_bit?

  test do
    raise "Test not implemented."
  end
end
