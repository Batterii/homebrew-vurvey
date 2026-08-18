class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.2/vurvey_0.19.2_darwin_arm64.tar.gz"
      sha256 "8487329c3416149c7072708d5c3a123f8e900ec1fa166d4b11a7a1956b6c4262"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.2/vurvey_0.19.2_darwin_amd64.tar.gz"
      sha256 "05b4d7576427b7e1ec83a3d847726d6bf3f88bd3ce24fffd341c39c951e3f0c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.2/vurvey_0.19.2_linux_arm64.tar.gz"
      sha256 "ec0ec7abba43fb6045888e5a1c940c485aa592dae76edc543e1cdc01ef558ef0"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.2/vurvey_0.19.2_linux_amd64.tar.gz"
      sha256 "5179add1275db8fe1fc6f017e88ed6ca0804b1ea053020da3cc6cfec9256b0cf"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
