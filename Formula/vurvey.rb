class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.22.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.22.0/vurvey_0.22.0_darwin_arm64.tar.gz"
      sha256 "be328b9b1c0bd64b09a6c62878ab3bb969b6d15dcadbb360e5e9799fc11c1bc9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.22.0/vurvey_0.22.0_darwin_amd64.tar.gz"
      sha256 "669cfbfb5d9c01779601a02ea534edf7d6fc98a3cb325a1cd951658eabb87ac7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.22.0/vurvey_0.22.0_linux_arm64.tar.gz"
      sha256 "aebd5a2a1034a4df1d48ad250201c0c4adf2d267bd3370f412c9956e9b94aec9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.22.0/vurvey_0.22.0_linux_amd64.tar.gz"
      sha256 "9b761bf1747291182c03f9bd5c99f17f2a0afe0c135c20a76b730273fc3fe69c"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
