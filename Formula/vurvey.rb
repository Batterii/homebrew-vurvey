class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.2/vurvey_0.3.2_darwin_arm64.tar.gz"
      sha256 "44b6ac590bb9b2f70b2b9cf9488843883d14d3ebe44cf74d969c966f93f8aa14"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.2/vurvey_0.3.2_darwin_amd64.tar.gz"
      sha256 "c71de4369fde1412972504c09bd890d8112659065555cff01ecfeb08f7e916f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.2/vurvey_0.3.2_linux_arm64.tar.gz"
      sha256 "9891e478d27f07832412d06ddfef0d512aff62e9941eb4a4a95299c0f29afe20"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.2/vurvey_0.3.2_linux_amd64.tar.gz"
      sha256 "bc94dca63fd1e6bc8f20fa4267042ccded1e1e29133ad85d7d1c11675ad2738b"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
