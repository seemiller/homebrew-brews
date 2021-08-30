class FlyingPenguin < Formula
  desc "FlyingPenguin"
  homepage "https://github.com/seemiller/flying-penguin/"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/seemiller/flying-penguin/releases/download/0.0.2/flying-penguin"
    sha256 "cab7afde8ddd236e4567e24a404e1e66f88837e419afeaef5d8baad2c0cd656f"
  end

  depends_on :arch => :x86_64

  def install
    bin.install stable.url.split("/")[-1] => "flying-penguin.sh"
  end

  test do
    system "#{bin}/flying-penguin.sh", "version"
  end
end
