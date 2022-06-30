# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  version "0.11.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/tart/releases/download/0.11.0/tart.tar.gz"
      sha256 "0178118a646d5d69abf51cfe22811e3bc0e2259db649fbf13be58ffd35f98ced"

      def install
        bin.install "tart"
      end
    end
  end

  depends_on :macos => :monterey

  depends_on "cirruslabs/cli/softnet"

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
