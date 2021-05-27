class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.3.5/repseqio-1.3.5.zip"
  version "1.3.5-1"
  sha256 "9602f3e794dd70ff40c6feee4427fc648d7e01955c1cdeb4518730dce0d6cbb6"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
