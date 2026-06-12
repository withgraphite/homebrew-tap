class GraphiteBeta < Formula
  desc "Allows you to manage your stacked changes and submit them for review on GitHub"
  homepage "https://graphite.dev/"
  license "AGPL-3.0"
  version "1.8.6"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.6/gt-macos-arm64"
      sha256 "9153b4b6d9ad8084ec700a1fb80dd8a4b35c08c3116bf41f1fcdd792b326781f"
      def install
        bin.install "gt-macos-arm64" => "gt"
        install_shell_completions
      end
    else
      url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.6/gt-macos-x64"
      sha256 "a7623f7c545487f69aa593d2bb3dae76b06fce544116a3e0f6eeb34291371678"
      def install
        bin.install "gt-macos-x64" => "gt"
        install_shell_completions
      end
    end
  end

  if OS.linux?
    url "https://github.com/withgraphite/homebrew-tap/releases/download/v1.8.6/gt-linux"
    sha256 "0e2e0f0160ebe258ec160ba011d6321d0346fcbd7f662d87158623afbc4427a2"
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
