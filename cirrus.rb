# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.39.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.39.0/cirrus-darwin-amd64.tar.gz"
    sha256 "ac5d0c48ec3efd4e4ec62cd631407ec87ca64f20112c0f985578d5281a232781"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.39.0/cirrus-darwin-arm64.tar.gz"
    sha256 "6d27a32957adb8cb620de2ea2e8bdddd64e2d2e6cb5c766357adb0d18551de90"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.39.0/cirrus-linux-amd64.tar.gz"
    sha256 "456ed36f102bc935c2164b0e2e90ff0caee0b6890440b4fc04b6d6a1205f67e3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.39.0/cirrus-linux-arm.tar.gz"
    sha256 "c968e6a26867424feec09c0b8d3e45cb1698b6d066c7c811d4e4bca38fe31b53"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.39.0/cirrus-linux-arm64.tar.gz"
    sha256 "bb8148e0c8a025819cb8759ecdabd7adc0548bcb3af0524f3098dc9fd0558ceb"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
