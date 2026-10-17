class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.21.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.2/vurvey_0.21.2_darwin_arm64.tar.gz"
      sha256 "64d3254c964e0945cdc695e25890d0f31181c26c745c03d626280646947d03ad"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.2/vurvey_0.21.2_darwin_amd64.tar.gz"
      sha256 "4b70433743754980a1d71e6d980fd4b367cf2bd911697f4040b53bf0c2a8af06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.2/vurvey_0.21.2_linux_arm64.tar.gz"
      sha256 "bc72f6fe7920cbf873bd51886a508f72a405a49b473ebde0ee73163311f7c185"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.21.2/vurvey_0.21.2_linux_amd64.tar.gz"
      sha256 "708c08b99d82192979a9c42320af60cd389444d4c2957a9a994fdad45ec391c4"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
