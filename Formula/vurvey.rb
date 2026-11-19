class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.24.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.0/vurvey_0.24.0_darwin_arm64.tar.gz"
      sha256 "0ba2bb88709658ee7d142a846d91037b3cdbae07ba91f3a1999e3400251a3523"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.0/vurvey_0.24.0_darwin_amd64.tar.gz"
      sha256 "e3bf6901b54bb0642079289dfa5d8cba36a9d13a079ed591dd870b160f8907bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.0/vurvey_0.24.0_linux_arm64.tar.gz"
      sha256 "7c2de412e5ce478157b8b8a1770169ff278f00d0525b61c785da30bd75987445"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.0/vurvey_0.24.0_linux_amd64.tar.gz"
      sha256 "d24f487bd1e422065b4f2deace8d28fb8fc670b986b01b2eb0ecbf51fd9bb59d"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
