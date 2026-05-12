class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.2/vurvey_0.17.2_darwin_arm64.tar.gz"
      sha256 "66b03c733f4f9740e56e5144a7f7cc9b0569a1b009f89c6a55024eb9369fd085"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.2/vurvey_0.17.2_darwin_amd64.tar.gz"
      sha256 "34fbc21cdc0680591e33310b07b9d92e261c88aae481ae6e0f3e8a6c290db772"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.2/vurvey_0.17.2_linux_arm64.tar.gz"
      sha256 "8420b5f9372cceb2481047e21489f0c51bad8480d1527fed2034ec1ef18a14f7"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.2/vurvey_0.17.2_linux_amd64.tar.gz"
      sha256 "1f8b7e7f15d1c8b56ddb9a1ddc1f7de9e2cb327f5859b9d075bb41928235897f"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
