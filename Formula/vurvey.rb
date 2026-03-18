class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.4.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.2/vurvey_0.4.2_darwin_arm64.tar.gz"
      sha256 "1750424eeeec0f1a44e70e09b0fd66333b5ffa646ddaf4669a25e18343ce6907"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.2/vurvey_0.4.2_darwin_amd64.tar.gz"
      sha256 "66d0e6eec2855885d44194b4dae95324abdae6899d0f1466be461c6fa53dcfa9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.2/vurvey_0.4.2_linux_arm64.tar.gz"
      sha256 "490a502aa11372a67d4b508e904cedccaa47f70a5ce0510f2bc3773902f7710f"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.4.2/vurvey_0.4.2_linux_amd64.tar.gz"
      sha256 "971bb03c08c92c38ed228f8e7f68f79774d59abb0963160b9862043345f74935"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
