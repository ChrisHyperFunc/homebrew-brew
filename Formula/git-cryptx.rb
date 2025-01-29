class GitCryptx < Formula
  desc "A tool for encrypting files in Git repositories"
  homepage "https://github.com/ChrisHyperFunc/git-cryptx"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/ChrisHyperFunc/git-cryptx/releases/download/v1.0.0/git-cryptx-aarch64-apple-darwin.tar.gz"
    sha256 "30b07dba01ee0fda7f50ebc66ba03765b1ae0f119d5a2cf8e07d18edf8644080"
  else
    url "https://github.com/ChrisHyperFunc/git-cryptx/releases/download/v1.0.0/git-cryptx-x86_64-apple-darwin.tar.gz"
    sha256 "d348c44c96b9a539cba1038cf57528a4522f574492282ff79bed39464c06d7e8"
  end

  def install
    bin.install "git-cryptx"
  end

  test do
    system "#{bin}/git-cryptx", "version"
    assert $?.success?
  end
end