class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.3/vurvey_0.21.3_darwin_arm64.tar.gz"
      sha256 "04a917953cd2d684cefe2db103190964779e1e1aa0d57ed37c53862c9c980676"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.3/vurvey_0.21.3_darwin_amd64.tar.gz"
      sha256 "298dcd960322f0ebb042a4632ac212c92e2256751ee3fc83f76e31d7b259373d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.3/vurvey_0.21.3_linux_arm64.tar.gz"
      sha256 "e2301f453880c30af60f58162f9406901cb3dcda10244b30d73337764f36d3f0"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.3/vurvey_0.21.3_linux_amd64.tar.gz"
      sha256 "b31a84ee2f1e201ecaa09483f1ca3a7d94f7cb641143460fd425fd40cdcf3ade"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
