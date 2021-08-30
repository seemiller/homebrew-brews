class FlyingGorilla < Formula
  desc "FlyingGorilla"
  homepage "https://github.com/seemiller/flying-gorilla/"
  version "0.0.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/seemiller/flying-gorilla/releases/download/#{version}/flying-gorilla-darwin-amd64-#{version}.tar.gz"
    sha256 "6a848a7311de780705ecdb1c667cbf67ad5617758f72902a68df045850f6af18"
  elsif OS.linux?
    url "https://github.com/seemiller/flying-gorilla/releases/download/#{version}/flying-gorilla-linux-amd64-#{version}.tar.gz"
    sha256 "4bb403b75565ac727c955c8d2f462e390956d5161bf98039d4ad960bf55781cc"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1].split("-")[0..-2].join("-") => "flying-gorilla"
  end

  test do
    system "#{bin}/flying-gorilla"
  end
end
