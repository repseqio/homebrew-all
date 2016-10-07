class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.1/repseqio-1.2.1.zip"
  version "1.2.1-1"
  sha256 "f7222a821f90f1ade34b3f1739d54dfc5df74f25998b9d541785adbb21fad44c"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
