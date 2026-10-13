class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.0/vurvey_0.21.0_darwin_arm64.tar.gz"
      sha256 "8d1b2a31722f5c05235e12e2c9dbc830e7690dc2d0f17f6c115f23cbfa700e38"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.0/vurvey_0.21.0_darwin_amd64.tar.gz"
      sha256 "a8854bb44332cb5c8adc71723e99ff9799717835360cb0ccaa99bdf25cc810f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.0/vurvey_0.21.0_linux_arm64.tar.gz"
      sha256 "157dd4222851a380bada84e702023d9a1078c0b9a63c0b99ba17cd235a74a2b5"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.0/vurvey_0.21.0_linux_amd64.tar.gz"
      sha256 "f3b4e58688b9000f7f40323175369c7bb1eb27c2c2230e6bf324d4af583ffbf5"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
