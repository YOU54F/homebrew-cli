# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "1.12.1"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/1.12.1/tart.tar.gz"
      sha256 "d0a3129e67248f118f67431bee7e40a93110a3a0d787a7c2ac2c20bf960afda8"

      def install
        libexec.install Dir["*"]
        bin.write_exec_script "#{libexec}/tart.app/Contents/MacOS/tart"
      end
    end
  end

  depends_on :macos => :ventura

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
