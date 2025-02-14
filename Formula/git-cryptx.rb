class GitCryptx < Formula
  desc "A tool for encrypting files in Git repositories"
  homepage "https://github.com/ChrisHyperFunc/git-cryptx"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/ChrisHyperFunc/git-cryptx/releases/download/v1.0.0/git-cryptx-aarch64-apple-darwin.tar.gz"
    sha256 "86f6562206fc54d5a51026a107df540a2856a4d39e5902418c2c44b8fffc842d"
  else
    url "https://github.com/ChrisHyperFunc/git-cryptx/releases/download/v1.0.0/git-cryptx-x86_64-apple-darwin.tar.gz"
    sha256 "82e9fa2a6cf818e6ee7fecbb76ab6352110b94ce2b3da1396593e47506c4c971"
  end

  def install
    bin.install "git-cryptx"
  end

  test do
    system "#{bin}/git-cryptx", "version"
    assert $?.success?
  end
end