# This file was generated automatically. DO NOT EDIT.
class Nifectl < Formula
  desc "Deploys, manages and scales applications"
  homepage "https://www.nife.io"
  version "4.1.17-prod"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.17-prod/nifectl-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    if Hardware::CPU.arm?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.17-prod/nifectl-darwin-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.17-prod/nifectl-linux-386.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nifetency/nife-release/releases/download/v4.1.17-prod/nifectl-linux-amd64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
