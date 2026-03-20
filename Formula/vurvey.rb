class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.0/vurvey_0.6.0_darwin_arm64.tar.gz"
      sha256 "f364b191166c48fab352f0058182d7de2dc1c2d071560d1c12d98d4e33d20826"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.0/vurvey_0.6.0_darwin_amd64.tar.gz"
      sha256 "00934286ed3d5d0188d84da56d3b8d713024615dd86d8d38ad4fbefa181b9e46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.0/vurvey_0.6.0_linux_arm64.tar.gz"
      sha256 "01ac73a2a61a5ec7e05ccc2641846b4a9291478626aa85aabe2409d51ba6f853"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.6.0/vurvey_0.6.0_linux_amd64.tar.gz"
      sha256 "503285366d0fb7aa331987889c0daf8da4015b5bad78a143177e4002a6756077"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
