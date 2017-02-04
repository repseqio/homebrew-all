class Repseqio < Formula
  homepage "https://github.com/repseqio/repseqio"
  url "https://github.com/repseqio/repseqio/releases/download/v1.2.6/repseqio-1.2.6.zip"
  version "1.2.6-1"
  sha256 "346d52e4dbd8190c7731e100855de8141c750abe5385d81526067e488381e7be"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
