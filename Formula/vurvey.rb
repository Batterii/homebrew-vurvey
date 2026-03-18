class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.5.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.0/vurvey_0.5.0_darwin_arm64.tar.gz"
      sha256 "630fe86a5d816dbbe69ff3381c559c599239567b9b72103e21cb65fdebc87847"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.0/vurvey_0.5.0_darwin_amd64.tar.gz"
      sha256 "d152d7cb30958dd36bbab2dedef6ccee1155344a0bb90b3a09c1c1cfca715427"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.0/vurvey_0.5.0_linux_arm64.tar.gz"
      sha256 "376c08eb500d100f0b313508a28d5c0204196bb484bec6090dcdeed37e336130"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.0/vurvey_0.5.0_linux_amd64.tar.gz"
      sha256 "63a0cb4fc7dad58118d665dee2b27a821b1c4da0aa2afdd1d14d217ec67d3dfa"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
