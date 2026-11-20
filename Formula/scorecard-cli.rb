class ScorecardCli < Formula
  desc "Scorecard (scorecard-cli), local code-quality gate; not OpenSSF Scorecard"
  homepage "https://github.com/moonbase2090/Scorecard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.1/sc-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "2aec7af95dde53baf984ee871d6d04b7c93bbd29868fe012208c6f48d1ee6bac"
    end
    on_intel do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.1/sc-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "c702fc0abdba2e54dc940ca556a2731a8bcc75ce65f00ce62b0f04caf366e5ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.1/sc-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2b13dd5be557c1969e599d56d6ff284d26498ea3b54e89e29201d56dc9d33af"
    end
    on_intel do
      url "https://github.com/moonbase2090/Scorecard/releases/download/v0.2.1/sc-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee836e65c16e1c6c4d1c9cf3fb3ddc866bf6088d2ff24ddd6298b39a6f543acd"
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
