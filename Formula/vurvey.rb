class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.1/vurvey_0.17.1_darwin_arm64.tar.gz"
      sha256 "38b62d7a8902e20e5cd77dd66c7f3df3f9e02db60454374dbb4db8c03b40854c"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.1/vurvey_0.17.1_darwin_amd64.tar.gz"
      sha256 "08f61f9e7c89b39c9b450f9efc78037d59d8dde52b2d8ce6d939f3a701bc8054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.1/vurvey_0.17.1_linux_arm64.tar.gz"
      sha256 "6d26f3a279baf479f205ead47a07a9ea1b582cedadf8204ac842bf6a4e999a99"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.1/vurvey_0.17.1_linux_amd64.tar.gz"
      sha256 "6a391cd3653b9301057e2c27e4cc8c4188d25030b4c38f924447c7d02b00fe6f"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
