class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.0/vurvey_0.11.0_darwin_arm64.tar.gz"
      sha256 "4df67bff719013bb6bfbc0e13b782d298088699d902532fe4fe68db3326acd93"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.0/vurvey_0.11.0_darwin_amd64.tar.gz"
      sha256 "a2786c3392c9eaaeb08a27f93e78d0d7e5215ae983d55192d110749e890f19b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.0/vurvey_0.11.0_linux_arm64.tar.gz"
      sha256 "ce559192d8f9b461b1ff46b18acba91a7cc78a7bdda58ac8511e47e9982877ad"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.11.0/vurvey_0.11.0_linux_amd64.tar.gz"
      sha256 "f14e8bb398aba08a893e14581c20deea52d9dfbe7a39920700df79b6667b4b79"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
