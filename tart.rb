# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "1.8.2"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/1.8.2/tart.tar.gz"
      sha256 "17cee8b15d8d4b72f1891f9eb044174ef4133076066cce6d9e929f564f87c296"

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
