class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.5.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.2/vurvey_0.5.2_darwin_arm64.tar.gz"
      sha256 "98eeab64952b8e51161257d1a823e9862f2e9882b9b2a5d4ec2cf1920736564a"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.2/vurvey_0.5.2_darwin_amd64.tar.gz"
      sha256 "0467176979155081f6a6e002bcca7d5be79eb7099a268006c27845a65d7d15e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.2/vurvey_0.5.2_linux_arm64.tar.gz"
      sha256 "ef46d0ac9527ecd8bbeaebbf33582a73dbf606f15459fa27b63dd32039acff50"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.5.2/vurvey_0.5.2_linux_amd64.tar.gz"
      sha256 "c88ac2087b8c999decaf8746e28663119070baed441e7d29224978288327266c"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
