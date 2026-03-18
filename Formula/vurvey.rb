class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.1/vurvey_0.3.1_darwin_arm64.tar.gz"
      sha256 "445cb36c87327b41a23357b415523bf9ab944d663ba548cfeb01647a1b6e7ede"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.1/vurvey_0.3.1_darwin_amd64.tar.gz"
      sha256 "a46b742743b219a53a60219d65788d1b6f674fd89e23d812ba8f1aaecfe8aacb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.1/vurvey_0.3.1_linux_arm64.tar.gz"
      sha256 "b3abbe26b5b4e12c6afb5f68f5c19d02e50eb8daa7939a87a903d4dc3c61dde9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.1/vurvey_0.3.1_linux_amd64.tar.gz"
      sha256 "b902b059e278a1a4461bd59142c0aac08644bfc9b5252479ae1f08d03d29d1f8"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
