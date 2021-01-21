# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.30.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.4/cirrus-darwin-amd64.tar.gz"
    sha256 "264dec2e51affff534f2ff32a5dd9c0c4b370a594679a2501d06004b465b0d6a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.4/cirrus-linux-amd64.tar.gz"
    sha256 "ce71faafc4a1a0999584026640cccd8b0238c6b89282aa80f61c9920486f423d"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.4/cirrus-linux-arm.tar.gz"
    sha256 "e7c722c113397836f5394fa1aacc7e0aeaf570d5e17b0a15e5122059c898f204"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.30.4/cirrus-linux-arm64.tar.gz"
    sha256 "fab6720be02504bf5682bf09f47c0d86cecd0a72e9738efaba61d0a384efb4b9"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
