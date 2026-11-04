class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_darwin_arm64.tar.gz"
      sha256 "63cdf33e63d9dee646d25ec52c27cd45b848e0cf4ceb9ec658a161bafa289975"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_darwin_amd64.tar.gz"
      sha256 "289150101c0238b42f3fc66763d8e050649a221178d720a8b5bb26ab6149635b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_linux_arm64.tar.gz"
      sha256 "baaa4cbfd99e19bedbc8344ac27d0035c83ccecde9f77e485277861d9613108b"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.6/vurvey_0.21.6_linux_amd64.tar.gz"
      sha256 "f773e973fcddf9fd2adc70def9ec1637fc54540df1c54056c3675a4f0600a084"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
