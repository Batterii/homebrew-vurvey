class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.8.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_darwin_arm64.tar.gz"
      sha256 "0867baf14474f862a2e9098658c7e099e28864affedfadbba2f8f15bc6b820c3"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_darwin_amd64.tar.gz"
      sha256 "cde2af1a657a056ce3c9ec0e0bf7981d5d6e17f8578f4ea785cb6a663b6b28fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_linux_arm64.tar.gz"
      sha256 "5826b61f89f29ed9c7b2822b0af9d310b5784c14819c436681da1ca8240ce643"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_linux_amd64.tar.gz"
      sha256 "217252aac90a9d13506c42a7df680e2810ad134076ca8931e8f5ab12b0c85ee1"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
