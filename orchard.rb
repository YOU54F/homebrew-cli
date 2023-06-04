# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Orchard < Formula
  desc "Orchestrator for running Tart Virtual Machines on a cluster of Apple Silicon devices"
  homepage "https://github.com/cirruslabs/orchard"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/orchard/releases/download/0.7.1/orchard-darwin-arm64.tar.gz"
      sha256 "2bad67bae108c88e839bf786b09a22aa16addb7f48e845fe5dded3247357afab"

      def install
        bin.install "orchard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/orchard/releases/download/0.7.1/orchard-darwin-amd64.tar.gz"
      sha256 "328e2f8c30e0b48cec0d6722367f597025e7109ab3e3f233e27b9be4a61f5f58"

      def install
        bin.install "orchard"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/orchard/releases/download/0.7.1/orchard-linux-arm64.tar.gz"
      sha256 "a1963c4a9149f4e04752df14b493f244b8f7573bc61f27ed91bc130abf4cc9c7"

      def install
        bin.install "orchard"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/orchard/releases/download/0.7.1/orchard-linux-amd64.tar.gz"
      sha256 "749d0deeb339955b56893eb48d3321968585f892598ecc6a45aade36fcbb331a"

      def install
        bin.install "orchard"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
