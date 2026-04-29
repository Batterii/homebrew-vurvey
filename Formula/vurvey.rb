class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.12.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.12.0/vurvey_0.12.0_darwin_arm64.tar.gz"
      sha256 "a01c3eaca7e4997a41d4ceb95128129c126d3483e3db4d146e77fb88b1209722"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.12.0/vurvey_0.12.0_darwin_amd64.tar.gz"
      sha256 "e1063f1f6973450b7a9a54e0cbda35f4e8e1671d4312fb50fea9e3dbf194fa1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.12.0/vurvey_0.12.0_linux_arm64.tar.gz"
      sha256 "c4ce17df72957664f581e4c29e8ea145319c41ebc98f62dc672e18cc64a42d89"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.12.0/vurvey_0.12.0_linux_amd64.tar.gz"
      sha256 "37216e63ed847fec784f400ee0ab427c2407d73e841d9eb5d7e489b9a0191d61"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
