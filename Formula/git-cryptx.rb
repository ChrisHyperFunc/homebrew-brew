class GitCryptx < Formula
  desc "A tool for encrypting files in Git repositories"
  homepage "https://github.com/ChrisHyperFunc/git-cryptx"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/ChrisHyperFunc/git-cryptx/releases/download/v1.0.0/git-cryptx-aarch64-apple-darwin.tar.gz"
    sha256 "4711338b7aa3defd2049f1960bc3bd3902e46766c9833c7ffdd5ec44c9158b33"
  else
    url "https://github.com/ChrisHyperFunc/git-cryptx/releases/download/v1.0.0/git-cryptx-x86_64-apple-darwin.tar.gz"
    sha256 "9721c93248516e90f2c5fcdba020ec2362c55e3642564dcd1bc2eeccd9975a22"
  end

  def install
    bin.install "git-cryptx"
  end

  test do
    system "#{bin}/git-cryptx", "version"
    assert $?.success?
  end
end