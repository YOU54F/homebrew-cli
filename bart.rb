# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "1.0.0"
  license "Fair Source"

  depends_on "cirruslabs/cli/softnet"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/0.38.0/tart.tar.gz"
      sha256 "0870ca88e53c92f61372288af4a4caaac40cc23358fd82006e9ab9f63b3eac0a"

      def install
        libexec.install Dir["*"]
        mv "#{libexec}/tart" "#{libexec}/tart.app/Contents/MacOS/tart"
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
