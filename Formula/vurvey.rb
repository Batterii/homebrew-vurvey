class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.6.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.1/vurvey_0.6.1_darwin_arm64.tar.gz"
      sha256 "79df7bcb2a88e29b2d4368396a5f9d0f96f4c7b64eb7d36998e80163626941c2"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.1/vurvey_0.6.1_darwin_amd64.tar.gz"
      sha256 "aaf4c3c6c5700afe057dd632aa25a5535ab7e2e24aab95d617c298560c8c3df0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.1/vurvey_0.6.1_linux_arm64.tar.gz"
      sha256 "175e421e8bba652d6ca06bcfacdbb98750ee1b392743f14fb6bdaba53c2c87a8"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.1/vurvey_0.6.1_linux_amd64.tar.gz"
      sha256 "bff331bb7ca81db11a862da2f6c8fbbc21be727756ec7c1e5ec36f9045285494"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
