class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.9.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.2/vurvey_0.9.2_darwin_arm64.tar.gz"
      sha256 "f1070da3b6633eddad4a6b096080379b57e02990040ecda2e14b3ff5f12bd658"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.2/vurvey_0.9.2_darwin_amd64.tar.gz"
      sha256 "a437e4b9e9cb0dacfc79dffcbc28deadd3ec6b58335cdd35948a873047db9e5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.2/vurvey_0.9.2_linux_arm64.tar.gz"
      sha256 "b6e7c1f62584fc6fcd154fbe0cd05e15284cedc8fdba727e1144cc3593ba5d16"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.2/vurvey_0.9.2_linux_amd64.tar.gz"
      sha256 "0b8086533a112c377f66d194c8cf57d3bbef4251486bba579d6a783742b4f445"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
