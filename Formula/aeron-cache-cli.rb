class AeronCacheCli < Formula
  desc "Aeron Cache Command Line Interface"
  homepage "https://github.com/bhf/aeron-cache-cli"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.2.1/aeron-cache-cli-x86_64-apple-darwin.tar.gz"
      sha256 "ff7420b62b2925b87642c8ec3c0a3493ce75761d27e964d066b04ae6ce7019f4"
    elsif Hardware::CPU.arm?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.2.1/aeron-cache-cli-aarch64-apple-darwin.tar.gz"
      sha256 "4c741f369d8235bfda39cd279399b3dac8aeea4d893ed911b791291f41652717"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.2.1/aeron-cache-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf674fc375620ef0ed65b49d728d6b6aab81880d5fd4917701a61c809ee323f2"
    end
  end

  def install
    bin.install "aeron-cache-cli" => "ac-cli"
  end

  test do
    system "#{bin}/ac-cli", "--version"
  end
end
