class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.20.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.20.0/vurvey_0.20.0_darwin_arm64.tar.gz"
      sha256 "c6b924cbf448072cdcbc0ff2fa2f9b08e78b8ffbc6be04ee74b9c925bfcd8d6b"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.20.0/vurvey_0.20.0_darwin_amd64.tar.gz"
      sha256 "49e63daae4d9f2704e9fbaa353dfc6ee7cffbfe3f9884a3a440894aea6085219"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.20.0/vurvey_0.20.0_linux_arm64.tar.gz"
      sha256 "8e43f0cec9ad1bd69fa3436ffba1a6f2c0a55bf76ad3ab52752919e08402c50c"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.20.0/vurvey_0.20.0_linux_amd64.tar.gz"
      sha256 "347e0e03778df6dc830b5e9242921b73635eb3cdb2ab1d89a7a752a7c53532c5"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
