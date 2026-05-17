class AeronCacheCli < Formula
  desc "Aeron Cache Command Line Interface"
  homepage "https://github.com/bhf/aeron-cache-cli"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.1.2/aeron-cache-cli-x86_64-apple-darwin.tar.gz"
      sha256 "1b0737ee2548ca367e99371baba7675ca56a45c2427a602048e4b45a2d1a1358"
    elsif Hardware::CPU.arm?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.1.2/aeron-cache-cli-aarch64-apple-darwin.tar.gz"
      sha256 "6bef4f82dfe832feda62c64822fb11187e78529d59aef7e710865cb4aed19af5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.1.2/aeron-cache-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79e33e73f419a7d36688d94f5c62679e01b9247701d736c476b00782d906f590"
    end
  end

  def install
    bin.install "aeron-cache-cli" => "CacheCLI"
  end

  test do
    system "#{bin}/CacheCLI", "--version"
  end
end
