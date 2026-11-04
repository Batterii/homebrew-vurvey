class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_darwin_arm64.tar.gz"
      sha256 "5e1c125e8249f850e88c0f9ce18d0853bca01e9cf9a31184effc4462be7e38d1"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_darwin_amd64.tar.gz"
      sha256 "1e53d316e2e3e412cdc5f02c53f6dec44f9543a61a3a8975c933763cae6a0b1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_linux_arm64.tar.gz"
      sha256 "7c3ea92ae8b3962929a733ccfe9b2c5ccaa42d9248bc68adfa822742f3c64fdf"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_linux_amd64.tar.gz"
      sha256 "7965d7b612b145a527f63ced3b026447093c5dc9c9fe91a144339775ee5757aa"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
