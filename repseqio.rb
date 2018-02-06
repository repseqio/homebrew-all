class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.11/repseqio-1.2.11.zip"
  version "1.2.11-1"
  sha256 "0d2a3f49524855c87c4cc7eeabe7af4c01e9cde0070c250d37f137a9159f766e"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
