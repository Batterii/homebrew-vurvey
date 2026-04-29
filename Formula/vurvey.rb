class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.10.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.1/vurvey_0.10.1_darwin_arm64.tar.gz"
      sha256 "6b40401aa8c147667f766a9057598b891d48952e9e49bb6fc807fe8c952bb122"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.1/vurvey_0.10.1_darwin_amd64.tar.gz"
      sha256 "ce0fa318622050dcf04bed10e23af50bc49bb97957598c3af1af7f06120ca3c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.1/vurvey_0.10.1_linux_arm64.tar.gz"
      sha256 "8816fdfa47601d8791d2b1c1b844a0564031726c0333b45630b2662307079866"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.1/vurvey_0.10.1_linux_amd64.tar.gz"
      sha256 "a4074cab21eb018153c93acf66d928a0aef0d2b14ec5318baf60a60874c2d6a0"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
