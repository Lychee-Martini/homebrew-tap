class Martini < Formula
  desc "A modern, extensible CLI format converter built in Rust and optimized for Agent Skills"
  homepage "https://lycheemartini.com"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-x86_64-macos.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-aarch64-macos.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-x86_64-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-aarch64-linux-gnu.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "martini"
  end

  test do
    assert_match "martini", shell_output("#{bin}/martini --version")
  end
end
