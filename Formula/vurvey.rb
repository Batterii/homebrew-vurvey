class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.1/vurvey_0.1.1_darwin_arm64.tar.gz"
      sha256 "b890014ca5b84d805092077b5c6c64f7d776bb572d4ca18978569131a7b46acd"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.1/vurvey_0.1.1_darwin_amd64.tar.gz"
      sha256 "e674562d8a25bdadcceaa059a445860b626fd3c2e67449acfc4d12b24a0b62bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.1/vurvey_0.1.1_linux_arm64.tar.gz"
      sha256 "57489c563e83b5d6c7c32d4cb6da23016e0c6f18247738ffc211d15c472ea8cd"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.1.1/vurvey_0.1.1_linux_amd64.tar.gz"
      sha256 "2bdf759a22cd0e206671e6f621935038c2f4e14c9a8477012a36b9ce625fa9ea"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
