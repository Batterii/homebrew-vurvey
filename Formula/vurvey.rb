class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.0/vurvey_0.19.0_darwin_arm64.tar.gz"
      sha256 "78181e8b52b4b141830eb7a53d65957394d5a30fa216aec00f7d51e3416d693d"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.0/vurvey_0.19.0_darwin_amd64.tar.gz"
      sha256 "c15c8f7721257d9c8f93adca4ec03d461618890df3914a3fb8c029bf997653c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.0/vurvey_0.19.0_linux_arm64.tar.gz"
      sha256 "85dc4b5774f3f203af9d62b809d38b2e342fc21d1be93be5f6911ad6be799da7"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.0/vurvey_0.19.0_linux_amd64.tar.gz"
      sha256 "7bae530d047f90fb83132bcabc7959037e6e543d80595cd88deaaa2bb556c2da"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
