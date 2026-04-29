class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.11.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.1/vurvey_0.11.1_darwin_arm64.tar.gz"
      sha256 "06af00dab70868806963d21306e1668edd6be76f40ec67c1f05b581dbcf3c3a3"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.1/vurvey_0.11.1_darwin_amd64.tar.gz"
      sha256 "cb48c88220092a4fcad4390253d1fea78c18a7c3346f64578e760f45341ab8a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.1/vurvey_0.11.1_linux_arm64.tar.gz"
      sha256 "711ef945ac0121889fd1ccda0479e9e22e9c1323552da0dfa50e35f342cfbe43"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.1/vurvey_0.11.1_linux_amd64.tar.gz"
      sha256 "84961e056cb83e1802dcc89dffa729afce44731ccf7eb9fa20bcd69d07c1574a"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
