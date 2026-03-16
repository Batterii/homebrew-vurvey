class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.2.0/vurvey_0.2.0_darwin_arm64.tar.gz"
      sha256 "735b46d5162abe142dcdb05ab167698427bdd4f99b0088d8e7f73d9292093317"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.2.0/vurvey_0.2.0_darwin_amd64.tar.gz"
      sha256 "26b5102f6d7ef1512b3c3703b18a3c8f787194c02fc4dbe561af94868f2c2f41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.2.0/vurvey_0.2.0_linux_arm64.tar.gz"
      sha256 "184b23e328da78b715bb0eb0f54bdc1410e1c3bc9f7f5f0327a1612edd196b03"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.2.0/vurvey_0.2.0_linux_amd64.tar.gz"
      sha256 "d85170ba362e05976137a0fad3ef0a188dd9ae5e30c9c934da912cbed922ff9d"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
