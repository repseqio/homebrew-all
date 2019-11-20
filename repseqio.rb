class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.3.3/repseqio-1.3.3.zip"
  version "1.3.3-1"
  sha256 "815ae491f0e84d4b85cc2edcfdefb3b34739595b5e1a414e2bb7be3add0958de"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
