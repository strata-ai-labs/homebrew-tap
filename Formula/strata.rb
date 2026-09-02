class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.1.1/strata-v1.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0bc8ca3e4e06628f3916963196e3b9790a88903cac46eca79a2683ee23f692e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.1.1/strata-v1.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25843fd3c22f63a1cfb96863f7c71316f9c321dd1fa299d838e2344695910ea2"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.1.1/strata-v1.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e692124d42ae39469b5ff1c982166ea58b3e45033f1b0b7e5b5b35120e09b5e"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
