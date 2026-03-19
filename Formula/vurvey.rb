class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.5.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.1/vurvey_0.5.1_darwin_arm64.tar.gz"
      sha256 "8282ee8b5c4e418be97af0378c78b7817be008b29fbf4331511b6676d85b80e9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.1/vurvey_0.5.1_darwin_amd64.tar.gz"
      sha256 "2b7433cb83c8168edfdfafd7a53bc995c11194c0965e34149d28e7e48c8249b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.1/vurvey_0.5.1_linux_arm64.tar.gz"
      sha256 "8fc77193abd146a71eb2d09ae472f07a02180825507301f5127d3dbbcfc4826e"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.1/vurvey_0.5.1_linux_amd64.tar.gz"
      sha256 "e3719d62e741b4b104c22d9aaa9a885c06f97ae0eee86bd61322fb71d37549ac"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
