class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.5/vurvey_0.21.5_darwin_arm64.tar.gz"
      sha256 "4785755e06ae1726c287837ec8e41c7ad427d3a363a2661af4d076f13d4bac27"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.5/vurvey_0.21.5_darwin_amd64.tar.gz"
      sha256 "5ced8d5f3282ad5413c77cf335b6f3ca360ff59f414148d4c1fc9e066895a8b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.5/vurvey_0.21.5_linux_arm64.tar.gz"
      sha256 "3de52775aa1ed3b53448f0bd56e09cad40381e0e46dafb4b4ccbfe36d91cdeac"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.5/vurvey_0.21.5_linux_amd64.tar.gz"
      sha256 "a6fb4cb34db0ffde31f09624cfc3fd2a9c162eccc3619e91efffa2d27138fdb0"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
