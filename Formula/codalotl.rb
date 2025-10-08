class Codalotl < Formula
  desc "AI-powered refactoring assistant for Go that turns agent sprawl into production-ready code."
  homepage "https://codalotl.ai"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/codalotl-releases/0.1.4/eb1742c5-5b40-4d7b-8c0a-2d48c5c418c6/codalotl-0.1.4-darwin-amd64.zip"
      sha256 "ebe49d82e63f835b4e771522ef40daede76d738563501cfabce04fc7792997af"
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/codalotl-releases/0.1.4/eb1742c5-5b40-4d7b-8c0a-2d48c5c418c6/codalotl-0.1.4-darwin-arm64.zip"
      sha256 "d1962b02ba644a58275dfe6f00fab79f890044d6a7093c400745625575e277bb"
    end

    def install
      bin.install "codalotl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/codalotl-releases/0.1.4/eb1742c5-5b40-4d7b-8c0a-2d48c5c418c6/codalotl-0.1.4-linux-amd64.tgz"
      sha256 "85323e06460f893efa749e41e5e2c60d81117896eecdad04d237338c2e16bd52"
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/codalotl-releases/0.1.4/eb1742c5-5b40-4d7b-8c0a-2d48c5c418c6/codalotl-0.1.4-linux-arm64.tgz"
      sha256 "83cba59934eb333ba5e8eff440a011171f1f4d7a0998d7309152c9ba3acb94c4"
    end

    def install
      bin.install "codalotl"
    end
  end
end
