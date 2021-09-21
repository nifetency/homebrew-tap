class Nifejs < Formula
  desc "Nifejs cli"
  homepage "https://nife.io"
  url "https://github.com/nifetency/nife-release/releases/download/2.6.0/nifectl-V2.6.0-darwin-amd64.tar.gz"
  sha256 "858b065a3db664f276586a6c8e9e22fd"
  version "2.6.0"

  def install
    inreplace "bin/nifejs", /^CLIENT_HOME=/, "export NIFE_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/nifectl"
  end

  test do
    system bin/"nifectl", "version"
  end
end
