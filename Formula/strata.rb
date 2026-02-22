class Strata < Formula
  desc "Production-grade embedded database for AI agents"
  homepage "https://stratadb.org"
  version "0.5.1-rc1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/strata-ai-labs/strata-core/releases/download/v0.5.1-rc1/strata-v0.5.1-rc1-aarch64-apple-darwin.tar.gz"
      sha256 "4db9b60af061caa6222361ccca61a50794f3731fe688c7c1dac5bc58d1ed23a7"
    end
    on_intel do
      url "https://github.com/strata-ai-labs/strata-core/releases/download/v0.5.1-rc1/strata-v0.5.1-rc1-x86_64-apple-darwin.tar.gz"
      sha256 "646db157b66ae430cba7866292e546d223e064a81224b98f5c814cccae941080"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/strata-ai-labs/strata-core/releases/download/v0.5.1-rc1/strata-v0.5.1-rc1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dcd7ccc57e3303da1b39c401822df220d2abaa4270790d2e31465671a0658409"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
