class Martini < Formula
  desc "A modern, extensible CLI format converter built in Rust and optimized for Agent Skills"
  homepage "https://lycheemartini.com"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-x86_64-macos.tar.gz"
      sha256 "836bb64b6069ec7706034f706f404aeddb04dfe1028d1fed65bc37dbb07de743"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-aarch64-macos.tar.gz"
      sha256 "7912f5212302a32b385ad64ca78aec88b9848652f28840cb0c1840bed01889a9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-x86_64-linux-gnu.tar.gz"
      sha256 "1881e2a5587e4b1ee54a663d88e5a0430ef880078ab13f52c40fd9d65ab5192c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Lychee-Martini/martini/releases/download/v#{version}/martini-v#{version}-aarch64-linux-gnu.tar.gz"
      sha256 "58699cd2c90e5027936dd214686a7d6d123e35315da56af692f798f11b12e049"
    end
  end

  def install
    bin.install "martini"
  end

  test do
    assert_match "martini", shell_output("#{bin}/martini --version")
  end
end
