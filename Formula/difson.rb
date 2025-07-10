VERSION = "1.0.4"

class Difson < Formula
  desc "URL shortener via bit.ly"
  homepage "https://github.com/sorahashiroi/difson"
  version VERSION
  license "MIT"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sorahashiroi/difson/releases/download/v#{VERSION}/difson-darwin-amd64.tar.gz"
    sha256 "7f9d995a3562e16e233ecbf071dd8ded64f58eee13a74d112de3fd19e502c677"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sorahashiroi/difson/releases/download/v#{VERSION}/difson-darwin-arm64.tar.gz"
    sha256 "d850dc98c9240235a9dd897ecdb382a553fa5b7772f9c951beabbc51f8026ff1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sorahashiroi/difson/releases/download/v#{VERSION}/difson-linux-amd64.tar.gz"
    sha256 "06f83dd4417a4577d84674c9cf6198ad80073fc3d559ec4053d2de8376f1fce9"
  end

  def install
    bin.install "difson"
  end

  test do
    system "#{bin}/difson", "--version"
  end
end