class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.17.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.0/vurvey_0.17.0_darwin_arm64.tar.gz"
      sha256 "332c50c8e4a6c0b0e5fb0f2c8e6bc33c4e687b6510bb3dd5177acf33c5595ee9"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.0/vurvey_0.17.0_darwin_amd64.tar.gz"
      sha256 "d0474266a00c52f70f6d89491a4c09a4d49df5817e992d6617cb4b09ddc66b45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.0/vurvey_0.17.0_linux_arm64.tar.gz"
      sha256 "6a34080f23e5655b1811d8ba4b16de366903a32feb9ff6f853ba6cc222e09edf"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.17.0/vurvey_0.17.0_linux_amd64.tar.gz"
      sha256 "5be9b283ce230a526cf34675ea55c3be836b20f86ea4722920f86077d4d0010f"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
