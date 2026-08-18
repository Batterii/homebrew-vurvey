class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.19.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.1/vurvey_0.19.1_darwin_arm64.tar.gz"
      sha256 "4a5c1e52fadb56674f229373064006c1b7b1e840dccbec4d3dceff806ef51008"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.1/vurvey_0.19.1_darwin_amd64.tar.gz"
      sha256 "ae7894a9a73de387c7e76dd645866861d18b471feec07eb285782e322827b875"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.1/vurvey_0.19.1_linux_arm64.tar.gz"
      sha256 "11ef97159c793b46cfc0ec7b415b06c70242eb1de98876f095f4fc4ec146e46d"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.19.1/vurvey_0.19.1_linux_amd64.tar.gz"
      sha256 "43309749ee3704fc78aefcb9f838b25fe8830a90895210ddc63dc9df6da22928"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
