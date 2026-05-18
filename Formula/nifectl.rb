# This file was generated automatically. DO NOT EDIT.
class Nifectl < Formula
  desc "Deploys, manages and scales applications"
  homepage "https://www.nife.io"
  version "4.1.15-prod"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.15-prod/nifectl-darwin-amd64.tar.gz"
      sha256 "237a506a20fd72f4ddeecbb04ccbaf89ccf65921c8a39fbbf0101c3741b66845"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.15-prod/nifectl-darwin-amd64.tar.gz"
      sha256 "237a506a20fd72f4ddeecbb04ccbaf89ccf65921c8a39fbbf0101c3741b66845"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.15-prod/nifectl-linux-386.tar.gz"
      sha256 "7a3a19aa72a030c2db86fdd5c8bb2dc00cba0b9e27e845f57aef0e17df5d4fcc"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.15-prod/nifectl-linux-amd64.tar.gz"
      sha256 "acd423e420b12c762029f9ee2fd8f397c1c4bd1ba91572d648fb37ae1e6a72af"
    end
  end

  def install
    bin.install "nifectl"
    bin.install_symlink "nifectl" => "nife"
  end

  test do
    system "#{bin}/nifectl", "version"
  end
end
