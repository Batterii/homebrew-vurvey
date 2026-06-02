class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.4/vurvey_0.17.4_darwin_arm64.tar.gz"
      sha256 "c8f03d8a7c65b8cb5b635204ee21245899407f60a863a2289ffec68be8b6d2cb"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.4/vurvey_0.17.4_darwin_amd64.tar.gz"
      sha256 "9ea29eb750cef1044aa4f01c49f596d1e823829a711f4464ad3c12df2a6e7868"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.4/vurvey_0.17.4_linux_arm64.tar.gz"
      sha256 "98718f9fdc4e25d6cbacb0a34fecf4e264594272334ca7d02052222f5fa203d6"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.4/vurvey_0.17.4_linux_amd64.tar.gz"
      sha256 "d60f24c88b53994c7a2af6cce26bff21de4572bcdbf62e2672afa43a84d2b2da"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
