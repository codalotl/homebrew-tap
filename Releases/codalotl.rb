class Codalotl < Formula
  desc "AI-powered refactoring assistant for Go that turns agent sprawl into production-ready code"
  homepage "https://codalotl.ai"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/codalotl-releases/0.1.5/f83c97ed-5a4a-780b-0a75-21862ed2236c/codalotl-0.1.5-darwin-amd64.zip"
      sha256 "436a9739d15441a80cd51206684f364e13fb037e1c016513064fc8628b147bff"
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/codalotl-releases/0.1.5/f83c97ed-5a4a-780b-0a75-21862ed2236c/codalotl-0.1.5-darwin-arm64.zip"
      sha256 "f363254d6bfe6f20d2960678f30c58e98ee20ec1dc9e00e47b4cc1cce6ec1b2f"
    end

    def install
      bin.install "codalotl"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/codalotl-releases/0.1.5/f83c97ed-5a4a-780b-0a75-21862ed2236c/codalotl-0.1.5-linux-amd64.tgz"
      sha256 "9c35e969b3882e0c7b57b8268d99cd94f28477aed74f9796bd20e4b4a2b231cc"
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/codalotl-releases/0.1.5/f83c97ed-5a4a-780b-0a75-21862ed2236c/codalotl-0.1.5-linux-arm64.tgz"
      sha256 "cb3f31e7975de3673291c157bb69a6ee3d01340e84cdb448b7923c350cb42c61"
    end

    def install
      bin.install "codalotl"
    end
  end

end
