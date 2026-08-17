class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.18.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.18.0/vurvey_0.18.0_darwin_arm64.tar.gz"
      sha256 "1cebec1d0cc1d9cf64f7087c4ebf39fb4ea88e262707555ee3426d4a16913fce"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.18.0/vurvey_0.18.0_darwin_amd64.tar.gz"
      sha256 "a51f9c748755a081bba0c86c620d5b2435be2105b1d7053a87b91bb6b7e27a5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.18.0/vurvey_0.18.0_linux_arm64.tar.gz"
      sha256 "da906badffd96bc5edb862d4d2b1a300ea14382dd444211fe386c4e954d03042"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.18.0/vurvey_0.18.0_linux_amd64.tar.gz"
      sha256 "a14c54399cae17701d627ca2e702a91b903755708281a73208e507e60c1bbd7a"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
