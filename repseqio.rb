class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.4/repseqio-1.2.4.zip"
  version "1.2.4-1"
  sha256 "d93033b387d6a199a23cc94910efd2af7229d16d890961973b3a1a178e28a8d1"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
