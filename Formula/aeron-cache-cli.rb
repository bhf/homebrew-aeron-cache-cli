class AeronCacheCli < Formula
  desc "Aeron Cache Command Line Interface"
  homepage "https://github.com/bhf/aeron-cache-cli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.2.0/aeron-cache-cli-x86_64-apple-darwin.tar.gz"
      sha256 "251167ab696d2c7fe2fb804dd6ba22abcc2c98b51a18c1e9a94b59fad4a523e5"
    elsif Hardware::CPU.arm?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.2.0/aeron-cache-cli-aarch64-apple-darwin.tar.gz"
      sha256 "6379dc4c876ba13251d9982e308d43981ad958fc42a7da801defc738c4c2f8a4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bhf/aeron-cache-cli/releases/download/v0.2.0/aeron-cache-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a6bef848035ac21cbc6a9289dacf65240be409e76f6c7f23c6b7f56cf77b138"
    end
  end

  def install
    bin.install "aeron-cache-cli" => "CacheCLI"
  end

  test do
    system "#{bin}/CacheCLI", "--version"
  end
end
