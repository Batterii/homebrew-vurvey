class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.13.0/vurvey_0.13.0_darwin_arm64.tar.gz"
      sha256 "d720e68b6bc2b3af43bc1b4eb3786b4fe8ec16e317d2881c9f1e59de5f8de479"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.13.0/vurvey_0.13.0_darwin_amd64.tar.gz"
      sha256 "be8bbcedeae3410ec790c4a1dbd5321732268cd48c39851c5e15e8b187892bc3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.13.0/vurvey_0.13.0_linux_arm64.tar.gz"
      sha256 "cf292218d097a500a8ccf19a62440bed450ca378b3247bf7f72166c415814fcf"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.13.0/vurvey_0.13.0_linux_amd64.tar.gz"
      sha256 "6935ebcefeae27f89af1b74cae4009d188ac6f6c5280a1081e45f933db9c6270"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
