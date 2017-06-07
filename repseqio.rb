class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.8/repseqio-1.2.8.zip"
  version "1.2.8-1"
  sha256 "5b8a2d8299b5f48de273ab8597d189fa2f8e55be0373f507bc2d7640b73ad495"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
