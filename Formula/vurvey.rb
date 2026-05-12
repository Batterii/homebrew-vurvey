class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.3/vurvey_0.17.3_darwin_arm64.tar.gz"
      sha256 "1e78463dce87aad8d643d39d5497d39dda6606c855ec358268d85a981f2f6a11"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.3/vurvey_0.17.3_darwin_amd64.tar.gz"
      sha256 "a7791bcce1c178650f1f12c128ebce52052cc8812a3599148d6afce162503c6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.3/vurvey_0.17.3_linux_arm64.tar.gz"
      sha256 "7e7aeb71fabe07496009d5fb865ae72c72ba165eea8c41be41b43cc619cd9397"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.3/vurvey_0.17.3_linux_amd64.tar.gz"
      sha256 "3863c7d641f1313b3a9cbe256b29b8db8c1d2b44f4f160b99e56be093dae0105"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
