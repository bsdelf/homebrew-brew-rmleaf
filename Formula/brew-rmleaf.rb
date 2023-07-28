class BrewRmleaf < Formula
  desc "Interactive utility for orphan formula removal"
  homepage "https://github.com/bsdelf/brew-rmleaf"
  url "https://github.com/bsdelf/brew-rmleaf/archive/v0.4.4.tar.gz"
  sha256 "e5e5d19b42ff263472da14f8bb7d076e8db06da7f38ecd5f05c98a993b966874"
  depends_on "dialog"

  def install
    bin.install "brew-rmleaf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brew-rmleaf -v")
  end
end
