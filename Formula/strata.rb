class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.0/strata-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9ad723d6d329eb6369111b8b301206ad820003d880009986dd7660df3593f078"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.0/strata-v1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93414b7c286904e2e62e488c8135083c2ecce34b040faacd7fa7fe0a20bea287"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.0/strata-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "038f6dd17018c01245dd90b57d0826fc6550a23ca1acdf233dbe88b6b8b13946"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
