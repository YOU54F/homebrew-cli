# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.30.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.1/cirrus-darwin-amd64.tar.gz"
    sha256 "7ea6a0fefe730c2419a3810df5f8117cf9892e66f18393da13a129e67f075c7e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.1/cirrus-linux-amd64.tar.gz"
    sha256 "0b07c58f1fabe45771ed967e9c381b24e547631af8fda9a75d9dc6e691173c25"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.1/cirrus-linux-arm.tar.gz"
    sha256 "f3e0df444b40702eba16ee6e8ca8c0ba4fe0f4d7b24aef2e125970c1ca171da0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.1/cirrus-linux-arm64.tar.gz"
    sha256 "49bdbe5cc327c344a061869c7fb8b2047afbd07da7007201286708740be6ef8d"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
