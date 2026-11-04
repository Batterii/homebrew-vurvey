class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.23.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.23.0/vurvey_0.23.0_darwin_arm64.tar.gz"
      sha256 "158a00dd170edb9aa8b7011d5859681abb43c5eed17ba71179bb7a54604b2081"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.23.0/vurvey_0.23.0_darwin_amd64.tar.gz"
      sha256 "94ec58799b4db603a644fe0d1061d700d10fce7dad5c41abbba8cc9e373cfaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.23.0/vurvey_0.23.0_linux_arm64.tar.gz"
      sha256 "c8e3944efb3474f5794cdfa82a5fc8fd8264ceb6b7ec32540bf7c9b3e5728c58"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.23.0/vurvey_0.23.0_linux_amd64.tar.gz"
      sha256 "15c654ca769086a8c462d5463a1e611ee8b29f624f2db8943a13d7e4085dbb08"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
