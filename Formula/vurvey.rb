class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.1/vurvey_0.21.1_darwin_arm64.tar.gz"
      sha256 "1dafe70122a33f5b8620be56a4d99e7bfe89d8d5a5e76f4f3435734460af5f9d"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.1/vurvey_0.21.1_darwin_amd64.tar.gz"
      sha256 "c34ddf867c6f90c340759090c371bf76105b4b37e9c416c07b5bcd0052e16194"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.1/vurvey_0.21.1_linux_arm64.tar.gz"
      sha256 "e7c8bc7e44181e8ff56b529617774e18d6c69b7c29a59a1c5c14a8e169f2d8b4"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.1/vurvey_0.21.1_linux_amd64.tar.gz"
      sha256 "03cf8ab9711b87a9bb9d27b69d1eda7b177526313a7c324701659a6980642719"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
