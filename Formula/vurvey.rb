class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.16.0/vurvey_0.16.0_darwin_arm64.tar.gz"
      sha256 "5682067c100c36263b0ff115de2c7a4f9c0d0b571948dfc44e0c03478a724f13"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.16.0/vurvey_0.16.0_darwin_amd64.tar.gz"
      sha256 "4e52d0c3c2eb901be8587e839e1e4ffff2107229c2fbe089195bca00e8a833be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.16.0/vurvey_0.16.0_linux_arm64.tar.gz"
      sha256 "b01b6e108f40f80733958e4c0ac7755c43c5d30a9c55eb6c63c1e1c53c72dbd9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.16.0/vurvey_0.16.0_linux_amd64.tar.gz"
      sha256 "e997ea093a43f4dbd3adec8c9849ad1da228c4d1a0af461040f7e787cd192c05"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
