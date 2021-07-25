class Nifejs < Formula
  desc "Nifejs cli"
  homepage "https://nife.io"
  url "https://get.fly.io/tarballs/stable/flyjs-v0.56.2/flyjs-v0.56.2-darwin-x64.tar.gz"
  sha256 "4deb8d482fdf0b867d6e436c387c31fedb3d70fc56f9c43344a78a44c429a02c"
  version "2.6.0"

  def install
    inreplace "bin/nifejs", /^CLIENT_HOME=/, "export FLY_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/flyjs"
  end

  test do
    system bin/"flyjs", "version"
  end
end
