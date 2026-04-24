class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.0/vurvey_0.9.0_darwin_arm64.tar.gz"
      sha256 "6f56ede15ae92ea9f59fd9948fb50a01202cac41ae7d2d62616487f71a4ef9c7"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.0/vurvey_0.9.0_darwin_amd64.tar.gz"
      sha256 "86494104a4618e376811d0d9ab4c53a4ff51aad40f39e07016e05f1d7de6d84e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.0/vurvey_0.9.0_linux_arm64.tar.gz"
      sha256 "7c5fbd40322e3b36a9b5b27a5457b53491aab39de7341bb01799fa90803b7dd1"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.0/vurvey_0.9.0_linux_amd64.tar.gz"
      sha256 "e2fd65b81fddbeeb2fd5b444af856434ce92cae95a3ab0ad5f5c63f59b9c0540"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
