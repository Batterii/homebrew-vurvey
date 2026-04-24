class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.7.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.7.0/vurvey_0.7.0_darwin_arm64.tar.gz"
      sha256 "49cbe0a0cc2451ada7e783871460c67e033864fddb55be103c94df5564817f10"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.7.0/vurvey_0.7.0_darwin_amd64.tar.gz"
      sha256 "ca89bf9d56198c7cf479f9923ff9786455367a2889d59f59e954dc573960be67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.7.0/vurvey_0.7.0_linux_arm64.tar.gz"
      sha256 "346f886f5ffc20c99afa1492de5cc17d1592d28f3c57530ed1378e94b5f24d75"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.7.0/vurvey_0.7.0_linux_amd64.tar.gz"
      sha256 "b3b1c87bb9e8e80cee1b11c4a59881b18e6bfb38e51834e33a4f4cf935b717af"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
