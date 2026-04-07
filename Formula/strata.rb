class Strata < Formula
  desc "Production-grade embedded database for AI agents"
  homepage "https://stratadb.org"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v0.6.1/strata-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "9f176d230569077fbcb61a942a4d59b7cb410c8238283044ca310c1551c613e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v0.6.1/strata-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "83ae710785782ed8bb1f1d2eac662b91bb3d73c8f5eadbe2e39a833b75b11812"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v0.6.1/strata-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "426b719ff3b6640956cb5bef791a15543b5c041a7d46f96bdfe494f802db0f98"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
