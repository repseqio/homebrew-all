class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.5/repseqio-1.2.5.zip"
  version "1.2.5-1"
  sha256 "644a9acfcde48077415ae23cc489b958b2ce5a0cbe5c98e848db1d0bb25c24b2"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
