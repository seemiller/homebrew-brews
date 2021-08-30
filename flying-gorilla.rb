class FlyingGorilla < Formula
  desc "FlyingGorilla"
  homepage "https://github.com/seemiller/flying-gorilla/"
  version "0.0.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/seemiller/flying-gorilla/releases/download/#{version}/flying-gorilla-darwin-amd64-#{version}.tar.gz"
    sha256 "70d3d980ea5d78a1c9152cbf7d64f70bfe0769ef276885b1ddf853317dc833ea"
  elsif OS.linux?
    url "https://github.com/seemiller/flying-gorilla/releases/download/#{version}/flying-gorilla-linux-amd64-#{version}.tar.gz"
    sha256 "0d7cb1843d8090157c506f87321cbff0b85dbfe97cd3b2c38a87c4aaab427c47"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "flying-gorilla"
  end

  test do
    system "#{bin}/flying-gorilla"
  end
end
