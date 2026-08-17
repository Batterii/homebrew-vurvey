class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.6/vurvey_0.17.6_darwin_arm64.tar.gz"
      sha256 "e70fbc07b4ac07a576255e0d30657ee310795153924823195eaf07988d95e81b"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.6/vurvey_0.17.6_darwin_amd64.tar.gz"
      sha256 "e6466066f7f2460b0340d954bf110df0401546d0ee17e0af5f84827c5259b93c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.6/vurvey_0.17.6_linux_arm64.tar.gz"
      sha256 "80a69a9db65e66226fc2985709ea053712db74fe2b2f71529d240a7d5d2e5945"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.6/vurvey_0.17.6_linux_amd64.tar.gz"
      sha256 "6f27a97d7fc2c83eee9e494319b801c5fc16d129525dec11934b51a41b664590"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
