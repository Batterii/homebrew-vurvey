class Vurvey < Formula
  desc "Terminal client for the Vurvey API"
  homepage "https://vurvey.com"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.0/vurvey_0.3.0_darwin_arm64.tar.gz"
      sha256 "88b4c458414e8b0265d0f10d7d2a41b40215aa7b67420953a7a28ea57469209b
f9a784568ad34c590c3987901090bbc83c609e63f5d61b94dbd3b6d924ffaa07"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.0/vurvey_0.3.0_darwin_amd64.tar.gz"
      sha256 "3619d27870af03733b98512de67c409b2af36598745a54d538341a12b2c68d85
1455120d013f65c78f799d2ca8f0222135c7b050ca0c824cf222e896fd797fa8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.0/vurvey_0.3.0_linux_arm64.tar.gz"
      sha256 "1eadf9bcdc237e6a4f87feb39bb3519d5172f1dc9418ee2237a7c328fcbe069f
aa68763067b454a6b73b6d2149bb0bfa77cd40550879f27d7b7779301c44207b"
    else
      url "https://storage.googleapis.com/vurvey-cli-releases/v0.3.0/vurvey_0.3.0_linux_amd64.tar.gz"
      sha256 "e82b204ea766cee2901f3ece275f2d3fa2240e4e99013ab42b0efd8e3f0e1cdc
b0f01956af5aa7e37088f43951c7b7cf782912de7c3aa8b15e789039ba97cb20"
    end
  end

  def install
    bin.install "vurvey"
  end

  test do
    assert_match "vurvey version", shell_output("#{bin}/vurvey --version")
  end
end
