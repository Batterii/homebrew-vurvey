class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.24.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.4/vurvey_0.24.4_darwin_arm64.tar.gz"
      sha256 "a7f6411bdb6c8da3bd4092c5b16f5256059d9e5e13fb34bfede8231bd76aee84"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.4/vurvey_0.24.4_darwin_amd64.tar.gz"
      sha256 "76d03732c720b06502ab7d1203b085aacc4f97a2b0790e73348390cc48ada18d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.4/vurvey_0.24.4_linux_arm64.tar.gz"
      sha256 "d32d24278f90e86add388d668fdf22987cb5fa553d1bd93c21f43dee1be73178"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.24.4/vurvey_0.24.4_linux_amd64.tar.gz"
      sha256 "d5450338eb3e937941d3c86afd668932ef60609ae3115c2dfc7ad085a5c3bdb4"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
