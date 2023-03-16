# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Softnet < Formula
  desc "Software networking with isolation for Tart"
  homepage "https://github.com/cirruslabs/softnet"
  version "0.7.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/softnet/releases/download/0.7.0/softnet.tar.gz"
      sha256 "ffdc8093d925bd0367f24c2a5f6fc04e570156df9c7bdf1cd640d50a5744826e"

      def install
        bin.install "softnet"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
