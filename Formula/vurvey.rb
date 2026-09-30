class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.6/vurvey_0.19.6_darwin_arm64.tar.gz"
      sha256 "23461acc18b649f9d62ccf5859820a7f94f9d9aa2af44911c45111b7d5d3f0fb"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.6/vurvey_0.19.6_darwin_amd64.tar.gz"
      sha256 "5879816303763f639d88b0fa9be979a76d50c34079c6c558f43af17ffba4f3a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.6/vurvey_0.19.6_linux_arm64.tar.gz"
      sha256 "f7007c68dfe1804f8b6b5c01998ccd719a74fdcdf9b620c1674aea1d5b67fbc4"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.6/vurvey_0.19.6_linux_amd64.tar.gz"
      sha256 "7adcdfc2327d22f39e95ff401714242a796e1b79ad7590a5ec2ef10694d1cbd6"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
