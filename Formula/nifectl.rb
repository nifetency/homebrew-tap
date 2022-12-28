# This file was generated by GoReleaser. DO NOT EDIT.
class Nifectl < Formula
  desc "Deploys, manages and scales applications"
  homepage "https://www.nife.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.1.7/nifectl-prod-v0.1.7-darwin-amd64.tar.gz"
      sha256 "2dd89a314bea133bfa2a090e0cb747c79c67da9b48f088ec4c5e3cf8fef52ad1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.1.7/nifectl-prod-v0.1.7-darwin-amd64.tar.gz"
      sha256 "2dd89a314bea133bfa2a090e0cb747c79c67da9b48f088ec4c5e3cf8fef52ad1"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.1.7/nifectl-prod-v0.1.7-linux-386.tar.gz"
      sha256 "acab2be9e34927c1de51146ef66fce41dd3ae0972b92a2b0b280fd5b560fd153"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nifetency/nife-release/releases/download/prod-v0.1.7/nifectl-prod-v0.1.7-linux-amd64.tar.gz"
      sha256 "35ed516780029c21298ee9964144736c1e3d198b67cf5514542da5eb22ddb03f"
    end
  end

  def install
    bin.install "nifectl"
    bin.install_symlink "nifectl" => "nife"
  end

  test do
    system "#{sbin}/nifectl version"
  end
end
