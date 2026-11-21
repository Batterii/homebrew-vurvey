class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.24.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.1/vurvey_0.24.1_darwin_arm64.tar.gz"
      sha256 "47123c5825de8f1a66ec847f5a9a70b2ef468b109270a08043aece7f6f6b7405"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.1/vurvey_0.24.1_darwin_amd64.tar.gz"
      sha256 "e040a9b69108d2178925847e68e3d3cdc8611cf261c8a7fd37ccbca04a17cb85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.1/vurvey_0.24.1_linux_arm64.tar.gz"
      sha256 "eafae34107f222eccef7e29680c52f829d0ef8d64361b6512a6ba7d622517369"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.1/vurvey_0.24.1_linux_amd64.tar.gz"
      sha256 "26dc7a96bc8e17ddffc79a188f182a9e274f736bb0180bfcd0ed66a84922d0b8"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
