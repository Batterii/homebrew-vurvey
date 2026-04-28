class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.9.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.3/vurvey_0.9.3_darwin_arm64.tar.gz"
      sha256 "6a77041d8ce668c2e76abb05504a203cdc23c190a7c955da33a9465b1d7bb0ca"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.3/vurvey_0.9.3_darwin_amd64.tar.gz"
      sha256 "dd6737591c0d3f1c0ff4c0d3f3eda875226b03ef1880b8afd679a391ca72811e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.3/vurvey_0.9.3_linux_arm64.tar.gz"
      sha256 "1379d751bfa8fbca23bf9eba18d8b9f30827f714df2b5b663240da38da1b71cf"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.3/vurvey_0.9.3_linux_amd64.tar.gz"
      sha256 "25a7a855e1fa3db0b54a98db4834a4ae30da05357c399cffc1407940f7b30289"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
