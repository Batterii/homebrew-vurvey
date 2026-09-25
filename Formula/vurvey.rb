class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.3/vurvey_0.19.3_darwin_arm64.tar.gz"
      sha256 "638ea5c7d20254ce8daeecf3094c0a83e04c01f1eb4e6723838cd02fd1e4eb3d"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.3/vurvey_0.19.3_darwin_amd64.tar.gz"
      sha256 "79b6805c2b036663e9fa01b5ac9df8f5538a7f6c2afc6a72e97eac6f03e95a12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.3/vurvey_0.19.3_linux_arm64.tar.gz"
      sha256 "e63d91cfb05703d15ef8d0a67183a1963e09eaadf0e0094b8f1594c519f66d86"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.3/vurvey_0.19.3_linux_amd64.tar.gz"
      sha256 "b730261356a3686d2b0280de2c92dae7da1490ff477d3a4d480a308622a7c261"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
