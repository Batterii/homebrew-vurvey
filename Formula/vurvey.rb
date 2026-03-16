class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.0/vurvey_0.1.0_darwin_arm64.tar.gz"
      sha256 "b779ffa78b0096723f9b0e2fb91d9173d4eb3e58dffb4273014dc06a0b5e5cd4"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.0/vurvey_0.1.0_darwin_amd64.tar.gz"
      sha256 "5b4c5ed586bb62b5e101e6a536861466e71f3f549f84797dc16beb362c071a6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.0/vurvey_0.1.0_linux_arm64.tar.gz"
      sha256 "e73498f9d7cfaa0133e305265575eee2f67fe8fec401d137446b95d9186e4929"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.0/vurvey_0.1.0_linux_amd64.tar.gz"
      sha256 "af80fc00de9ea578c433d52a279b7ef681586fa43c2beafda1bda2bf09bd142f"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
