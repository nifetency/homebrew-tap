# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.225"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.225/flyctl_0.0.225_macOS_x86_64.tar.gz"
      sha256 "55986ab6b55afed16571c6c06457f770ce960a1b56148c522598c3061d26021f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.225/flyctl_0.0.225_macOS_arm64.tar.gz"
      sha256 "29a2ec03b1b7ecbd7f8bed8e5615c60efecd6e6d818ea6305dcc77e29d56002e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.225/flyctl_0.0.225_Linux_x86_64.tar.gz"
      sha256 "c6c35a87e1112089ba264f50a5bbf0a3b3fc24f5dc45dcaef65c4f72d79a5ceb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superfly/flyctl/releases/download/v0.0.225/flyctl_0.0.225_Linux_arm64.tar.gz"
      sha256 "396f9cdb2bbde683648ff33e0c44cc9af5142c6c552fbc1ebc1d22159fd38e2f"
    end
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
