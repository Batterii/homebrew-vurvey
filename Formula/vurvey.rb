class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.10.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.0/vurvey_0.10.0_darwin_arm64.tar.gz"
      sha256 "c009329befd0326c4203c615f68c8ff3ba16b3f89cc28b6474572a898f305f71"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.0/vurvey_0.10.0_darwin_amd64.tar.gz"
      sha256 "bed643234e8e09bc8b0be03f8a950d62d325583229e75be5a333744af807d248"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.0/vurvey_0.10.0_linux_arm64.tar.gz"
      sha256 "998efa1056a95c038c46922bb018cbe3fbb0a1e9e9530fbe17f629a9d8ed6427"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.10.0/vurvey_0.10.0_linux_amd64.tar.gz"
      sha256 "9ab66e183f99eac1de36d25e98e5c2bfd6ae43a31c1a85b9584abce8bcb12ffe"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
