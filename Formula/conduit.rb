class Conduit < Formula
  desc "Terminal AI coding harness built around Continuity"
  homepage "https://conduitcode.dev"
  url "https://registry.npmjs.org/@conduitcode/cli/-/cli-0.1.0.tgz"
  sha256 "e3440575df640b74b7ab0f93ab19b0c5dda1aaada0f5234017919273e328a8bb"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/conduit --version").strip
  end
end
