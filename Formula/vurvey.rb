class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.8.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_darwin_arm64.tar.gz"
      sha256 "4b492e4b1b29fcfe9656af80d4b9faff7539dd5dd34639327699265d03fabba2"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_darwin_amd64.tar.gz"
      sha256 "7959c4861206acf1d8342c8cafd820d060cf5ae2238266b61d3101ee10774bb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_linux_arm64.tar.gz"
      sha256 "a15120cb0fbaf81a9868863d6ec23f03217d5f139e2eccc0cfdc90e6cf1c0bb9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.8.0/vurvey_0.8.0_linux_amd64.tar.gz"
      sha256 "2bbd6d6989d29ace5bab4d104558d11d2334b6066c1b16186bbfb9d158b2e215"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
