class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.5/vurvey_0.19.5_darwin_arm64.tar.gz"
      sha256 "efab87f820f41865dfa4ec84441477ff0b4c4794d6736214a2131eb31302e069"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.5/vurvey_0.19.5_darwin_amd64.tar.gz"
      sha256 "f9d07018581853c20ab8aeb6e135c589372dcfe6806b53be640c639344eba32e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.5/vurvey_0.19.5_linux_arm64.tar.gz"
      sha256 "09a901e2f54d373436fbc1bf8583a392e44722a249ed8b2774370d7c26fdc65a"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.5/vurvey_0.19.5_linux_amd64.tar.gz"
      sha256 "aa9d025d7152309beecf1a049bff7a3fa95515ecb4bff0fb0af652477015a789"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
