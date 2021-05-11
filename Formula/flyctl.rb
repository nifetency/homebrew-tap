# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flyctl < Formula
  desc ""
  homepage "https://fly.io"
  version "0.0.217"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.217/flyctl_0.0.217_macOS_x86_64.tar.gz"
    sha256 "b4493bf82fcc85a1e5a740ab696c15fff86d408a2755fab4dc5e2ee7af05cd39"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.217/flyctl_0.0.217_macOS_arm64.tar.gz"
    sha256 "e835c6eea6c76a83ecb5b74b6e2469152cb6aaf24a134a8f37c4615eefcb161f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.217/flyctl_0.0.217_Linux_x86_64.tar.gz"
    sha256 "5b4a41284853b2a17ebe0527d5a047757a721d622d0ee85a7fb87e20cde4d586"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/superfly/flyctl/releases/download/v0.0.217/flyctl_0.0.217_Linux_arm64.tar.gz"
    sha256 "e8a6abe68ff84bfe1fd33cedc9e571bdd04c3eed3de5d6efbad895bdc5e7b11f"
  end

  def install
    bin.install "flyctl"
    bin.install_symlink "flyctl" => "fly"
  end

  test do
    system "#{bin}/flyctl version"
  end
end
