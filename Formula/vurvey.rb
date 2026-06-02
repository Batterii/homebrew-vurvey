class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.5/vurvey_0.17.5_darwin_arm64.tar.gz"
      sha256 "514c6c4224dcbff1014f7fa40245a05982556e432feb777fd08846436198c068"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.5/vurvey_0.17.5_darwin_amd64.tar.gz"
      sha256 "bb2281cb10ea27a0f73898f2e5087559259ac0fb2fc27864e32b6ad2c3d6e097"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.5/vurvey_0.17.5_linux_arm64.tar.gz"
      sha256 "352464c93bb60c74bae4e7b737e07d48f68506fd3366a0b8fa88d0e26e2b62f1"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.5/vurvey_0.17.5_linux_amd64.tar.gz"
      sha256 "08f1a85b8199ae597315de003b6fa5b2ec9ca47ac5678564d94c8bf59026afbf"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
