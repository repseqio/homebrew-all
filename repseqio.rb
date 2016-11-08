class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.2/repseqio-1.2.2.zip"
  version "1.2.2-1"
  sha256 "13280a27d6e72d2259eaa24120ced48a42237cb37fcc11b356d98e9f1154330d"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
