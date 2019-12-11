class Unyaffs < Formula
  desc "Extract files from a YAFFS2 filesystem image"
  homepage "https://git.bernhard-ehlers.de/ehlers/unyaffs/"
  url "https://git.bernhard-ehlers.de/ehlers/unyaffs/archive/0.9.7.tar.gz"
  sha256 "17489fb07051d228ede6ed35c9138e25f81085492804104a8f52c51a1bd6750d"
  head "https://git.bernhard-ehlers.de/ehlers/unyaffs.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "40557f6cfcea6b1d9528c29f4f4bd1f55272f83e1ff6bbcb4a2b8b9fa39e6b6d" => :mojave
    sha256 "a5782b3ff1d562df3fc65956293b9fe51e8d75f1c746b0fd62e1b6dd99573ef5" => :high_sierra
    sha256 "75da4c47cc7a56283d88fc1438a8a91a4d3d4c0e40c3a6e6f228ec69de33c205" => :sierra
    sha256 "fe8c38e3c09223e9cea5b052a4774b7e502b0a057101c788629727cbf942b786" => :el_capitan
  end

  def install
    system "make"
    bin.install "unyaffs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/unyaffs -V")
  end
end
