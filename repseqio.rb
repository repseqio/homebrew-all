class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.9/repseqio-1.2.9.zip"
  version "1.2.9-1"
  sha256 "7195177d8012d8ea9abc6537690bf07b3dcdcec8ee16e846a886629a95ab69f6"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
