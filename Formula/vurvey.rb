class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.9.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.1/vurvey_0.9.1_darwin_arm64.tar.gz"
      sha256 "ea75d5f2fee63e879fdb92e5fa6e4fee5eea871664828f60b61db4cbc4dab529"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.1/vurvey_0.9.1_darwin_amd64.tar.gz"
      sha256 "99d10fc3dd637acfb36b0e7e4bd68ebbe899a266733b9432d9409dc0df5f4009"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.1/vurvey_0.9.1_linux_arm64.tar.gz"
      sha256 "97389add4ffe241651d659f24d2fc82cfe82823ab3f5a9531d2b9ca8fe450f7a"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.9.1/vurvey_0.9.1_linux_amd64.tar.gz"
      sha256 "5735d176a428e12396c288ff7509772644feb5d322e7f31ec7aa930f7a1dc19b"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
