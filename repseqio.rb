class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.1.0/repseqio-1.1.0.zip"
  version "1.1.0-1"
  sha256 "b1ce78869d6afcc46c40f14e72b18ff994f9a49d13aa346ec6c002f495107e68"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
