class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.3/repseqio-1.2.3.zip"
  version "1.2.3-1"
  sha256 "36882a10662de214c83dde6ff8edca96b2b4d3c05f3c7d56eab7cb819d96e59f"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
