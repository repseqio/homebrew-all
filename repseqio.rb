class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.3/repseqio-1.3.zip"
  version "1.3.0-1"
  sha256 "b392a601c49c48fda58fe0fc2bf49a7e0bface83b616002ff198a9fc475f64e6"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
