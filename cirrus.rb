# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.101.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.101.0/cirrus-darwin-amd64.tar.gz"
      sha256 "444bc5d16a83f50a7a8b728c5ca9efd00dda79dc19b2466daffb6bed00d84386"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.101.0/cirrus-darwin-arm64.tar.gz"
      sha256 "1bafaf458dc61f1058b3b481aa71273445bf9fa38cf7a3a40334ded0ff8340c0"

      def install
        bin.install "cirrus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.101.0/cirrus-linux-arm64.tar.gz"
      sha256 "9784d1c4d3e76969c05f4e2f48bba6c8dc22580c2da3ce3e54a16ccf1a7d296e"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.101.0/cirrus-linux-arm.tar.gz"
      sha256 "1dd29773642ce63309788b92b6d562c794936bc13e6b6be4d6f8799e1d7b89bf"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.101.0/cirrus-linux-amd64.tar.gz"
      sha256 "4ddc9134697d51d8ff43641f65fc302d8d1144ba6dd82e0b4aa6ce5d53115011"

      def install
        bin.install "cirrus"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
