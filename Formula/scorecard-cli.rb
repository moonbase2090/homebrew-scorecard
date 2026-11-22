class ScorecardCli < Formula
  desc "Scorecard (scorecard-cli), local code-quality gate; not OpenSSF Scorecard"
  homepage "https://github.com/moonbase2090/Scorecard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.2/sc-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "453a4c8fcc2784aea46ac0648426bf77d881c33d4dc0b0bf8499ce9ff1abf5f6"
    end
    on_intel do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.2/sc-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "5d0348ca4f0c798c3c1a91c134606b8a08bb5d043e952f04c1297e0b5047cced"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.2/sc-v0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "deeb3f60872b7b4a34eebcbcac4a9a5050fa86ba1bffbbaa85d7ca2eb79c834d"
    end
    on_intel do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.2/sc-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c85dd2e793af7e5749f5086dbd2ec62dcf6b1929215abc6ffb65ea89cf760a8c"
    end
  end

  def install
    bin.install "sc", "sc-mcp"
  end

  test do
    assert_equal "sc #{version}", shell_output("#{bin}/sc --version").strip
    assert_equal version.to_s, shell_output("#{bin}/sc-mcp --version").strip
  end
end
