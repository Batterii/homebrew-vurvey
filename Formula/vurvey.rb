class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.1/vurvey_0.4.1_darwin_arm64.tar.gz"
      sha256 "7ea4aeea430a4f17d87c1d1f8f825106848015feb0b78e7f91ef24c20690ba59"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.1/vurvey_0.4.1_darwin_amd64.tar.gz"
      sha256 "c673218abe89cf73adc67aeea72afa95b6786afcc5b84d1032c0b4650d0813fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.1/vurvey_0.4.1_linux_arm64.tar.gz"
      sha256 "132317572f0da35207401b5bb2c0ab8cc4b1cec7b7b4fbcbbd07ffbef1273224"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.1/vurvey_0.4.1_linux_amd64.tar.gz"
      sha256 "23ff87f62c56913a2396099522be6b21a70b362d46605d97fd252359ba19071f"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
