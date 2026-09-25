class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.4/vurvey_0.19.4_darwin_arm64.tar.gz"
      sha256 "9ed951140210bc7a0e21b7ae00a6bd0798cc5e30c14910ce6a25bedda4e9f9d9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.4/vurvey_0.19.4_darwin_amd64.tar.gz"
      sha256 "b15dcfcb2e727b96bbe657f3e2a30495145cb6d9590197148561c39e75a7ffcf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.4/vurvey_0.19.4_linux_arm64.tar.gz"
      sha256 "e85dceed306d13e6f6383f36f0dbe4aea0387cb2d114913f6707d91bac4865e0"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.4/vurvey_0.19.4_linux_amd64.tar.gz"
      sha256 "61b5297ec3617e6f905d9fa86a40c6590710d9494a7e09397a823925c6a98598"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
