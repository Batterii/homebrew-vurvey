class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.14.0/vurvey_0.14.0_darwin_arm64.tar.gz"
      sha256 "0ab21ce59b311c7229f10f82d99ae9964092798fc22ae9e714c7d99af99ff722"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.14.0/vurvey_0.14.0_darwin_amd64.tar.gz"
      sha256 "db93a1d6b50b32b32fedf5f7b758083919e99a8dbf6aba97fae4eeb8d3afe471"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.14.0/vurvey_0.14.0_linux_arm64.tar.gz"
      sha256 "1ccc9234264b29d91ceeb4050f9dbb0799d3f7c4d1836d4b77d3161b4580d0fa"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.14.0/vurvey_0.14.0_linux_amd64.tar.gz"
      sha256 "d913c4605b453367dc642be5a8a18100f838f553d9b602a3fbb7e3d041547860"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
