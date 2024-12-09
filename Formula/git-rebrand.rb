class GitRebrand < Formula
  desc "Git extension to rewrite repository history for rebranding purposes"
  homepage "https://github.com/aloshy-ai/git-rebrand"
  url "https://github.com/aloshy-ai/git-rebrand/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"

  # Add bottle block - this will be auto-updated by Homebrew
  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "BOTTLE_SHA_HERE"
    sha256 cellar: :any_skip_relocation, sonoma: "BOTTLE_SHA_HERE"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "BOTTLE_SHA_HERE"
    sha256 cellar: :any_skip_relocation, ventura: "BOTTLE_SHA_HERE"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/git-rebrand", "--version"
  end
end
