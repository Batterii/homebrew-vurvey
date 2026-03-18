class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.0/vurvey_0.4.0_darwin_arm64.tar.gz"
      sha256 "44bac0d7cfc844469765e4d55927bdc89f356518a554d0c393f52c0a95674e85"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.0/vurvey_0.4.0_darwin_amd64.tar.gz"
      sha256 "f760d39e074ad0f8ba66e3ac46ba6fa3a89a357b41593eff55ee69191fa56d69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.0/vurvey_0.4.0_linux_arm64.tar.gz"
      sha256 "b6097a729afaaaa61a19d6716d1b41ac4ded080160ca8b12009a3b3ab3e6e87a"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.0/vurvey_0.4.0_linux_amd64.tar.gz"
      sha256 "c1b5ed14bddcc94facfae51f859f0f13e23327d8e55017f87cf0fbdd1bd89ec1"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
