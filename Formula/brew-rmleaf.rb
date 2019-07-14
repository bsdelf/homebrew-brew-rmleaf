class BrewRmleaf < Formula
  desc "Interactive utility for orphan formula removal"
  homepage "https://github.com/bsdelf/brew-rmleaf"
  url "https://github.com/bsdelf/brew-rmleaf/archive/v0.4.3.tar.gz"
  sha256 "afff3e638239e79c35e6719fe647617239c60a5cf7e33a631fd59d7970dacd42"
  depends_on "dialog"

  def install
    bin.install "brew-rmleaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brew-rmleaf -v")
  end
end
