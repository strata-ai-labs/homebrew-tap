class Strata < Formula
  desc "Production-grade embedded database for AI agents"
  homepage "https://stratadb.org"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/strata-ai-labs/strata-core/releases/download/v0.6.0/strata-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "43375d3a2307d3e812255737461bcb84e175d0752407f073c9228d9ffdb7d703"
    end
    on_intel do
      url "https://github.com/strata-ai-labs/strata-core/releases/download/v0.6.0/strata-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "f1808e4e0091b452fdbc4b4c17267f565a421ab16f6095905b6ffb1d50ff66df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/strata-ai-labs/strata-core/releases/download/v0.6.0/strata-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f812678cd341ec3f8eb15f41a8e631d19d53b592296d3173cdcf43fd1501a9de"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
