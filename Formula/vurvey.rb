class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.15.0/vurvey_0.15.0_darwin_arm64.tar.gz"
      sha256 "b4873166b29a1145586098c67b974508341196826bdd69919a73172ddb2e91c3"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.15.0/vurvey_0.15.0_darwin_amd64.tar.gz"
      sha256 "ff2bb73867b930aeec5190bb965671e0475cbb5bdaaf850a9e5d38eda781257c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.15.0/vurvey_0.15.0_linux_arm64.tar.gz"
      sha256 "666f3315374629e71beb2581df13c7cdef9c64835a642116187c292e650828ae"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.15.0/vurvey_0.15.0_linux_amd64.tar.gz"
      sha256 "c030a648ad9f8290eb47e98deb54195d0fc8a51879424cfbe7e9f3cdf799b910"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
