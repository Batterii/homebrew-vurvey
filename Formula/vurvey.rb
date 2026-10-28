class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.4/vurvey_0.21.4_darwin_arm64.tar.gz"
      sha256 "c4fff25a88d39ab696cfc5153348126c492cdb1e2e4989ce1e434efd86ae4d84"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.4/vurvey_0.21.4_darwin_amd64.tar.gz"
      sha256 "3aba2b14dbc40349f1438dd096046ce509d2ba9d771c73b5f73e7040c49569e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.4/vurvey_0.21.4_linux_arm64.tar.gz"
      sha256 "f712975955c7c6655f1a314cbeb9312b0025c41a320cb2e9aef78b95e7a5fdd0"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.4/vurvey_0.21.4_linux_amd64.tar.gz"
      sha256 "07cf4f4e6e46f2b587e9a7ad25498f236bec18a91b97a1911669f6ae188ec291"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
