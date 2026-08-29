class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.1.0/strata-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e963dfe84d7486ef40664285d9eb38d144e3daab0e27e86b4f5d4b7a007cb6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.1.0/strata-v1.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "701af0458f49e2bccaa2d13fd27bd0d5208aba4c6f91d5e74f676e40e0520a71"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.1.0/strata-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b193263b1854b7fe3f96ef7105c92161cba8b01ac049da0719c3de0f2f1b9e8"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
