# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "1.7.3"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/1.7.3/tart.tar.gz"
      sha256 "bdf9480c8f5df9ea22f5318f40f0d1ae46fcfadc59b75a94bf706ac41f2f5c80"

      def install
        libexec.install Dir["*"]
        bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      end
    end
  end

  depends_on :macos => :monterey

  on_macos do
    unless Hardware::CPU.arm?
      odie "Tart only works on Apple Silicon!"
    end
  end

  def caveats
    <<~EOS
      See the GitHub repository for more information
    EOS
  end
end
