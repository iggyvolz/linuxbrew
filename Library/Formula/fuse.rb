class Fuse < Formula
  homepage "http://fuse.sourceforge.net/"
  url "https://sourceforge.net/projects/fuse/files/fuse-2.X/2.9.3/fuse-2.9.3.tar.gz"
  sha256 "0beb83eaf2c5e50730fc553406ef124d77bc02c64854631bdfc86bfd6437391c"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/fuse", "--version"
  end
end
