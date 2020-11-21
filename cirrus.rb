# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.19.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.19.0/cirrus-darwin-amd64.tar.gz"
    sha256 "9227a1dfa13499414c306906cd3953ea2d7beb8096279ee76e157faceac88019"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.19.0/cirrus-linux-amd64.tar.gz"
    sha256 "e11557655139051045ec9f7f550e03857cf1cb711a0cbd7c6702d1544c0e583a"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.19.0/cirrus-linux-arm.tar.gz"
    sha256 "ba5bcecc5ed0e0a642a533e2737ef250f5008ca571cb0826652b4f8d0094b0e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.19.0/cirrus-linux-arm64.tar.gz"
    sha256 "66661296cf481d5b3dbd445e7f3ebad056bac5fd8a7870cb59ca7e9a01686753"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
