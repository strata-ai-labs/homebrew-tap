class Strata < Formula
  desc "Embedded database for the agent era: branch, time-travel, search"
  homepage "https://stratadb.org"
  version "1.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.1/strata-v1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "3bd2735a81ad9b8afd17ddd0410ac140bf9879acf0b5092308ef860a2810f580"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.1/strata-v1.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5ba863db5a93514f9ec1b56b5942b92a6e50cac42201c9f0d85a62fe589df164"
    end
    on_intel do
      url "https://github.com/stratalab/strata-core/releases/download/v1.2.1/strata-v1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7f115ed0934ef4424d1bd949e8b38d9018de283ed96681bd9fcfdfca13dc0e6"
    end
  end

  def install
    bin.install "strata"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strata --version")
  end
end
