class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.3.4/repseqio-1.3.4.zip"
  version "1.3.4-1"
  sha256 "84a5d2f6c52210fd73b5792a6c7ca4f45f19664a6fc27ca09dddfbbe2c8d8bc3"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
