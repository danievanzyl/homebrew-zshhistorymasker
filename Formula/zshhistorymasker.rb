# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zshhistorymasker < Formula
  desc "Remove sensitive data from your zsh history"
  homepage ""
  version "0.1.0-beta.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/danievanzyl/zshhistorymasker/releases/download/v0.1.0-beta.0/zshhistorymasker_Darwin_x86_64.tar.gz"
    sha256 "dfa9214ad14f040d15c2d6cfbfa03cd3fb908b176257f3fd49e386c42b11d934"

    def install
      bin.install "zshhistorymasker"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/danievanzyl/zshhistorymasker/releases/download/v0.1.0-beta.0/zshhistorymasker_Darwin_arm64.tar.gz"
    sha256 "3cf83d25cc6066ee415ad51e2a920c48fc0645c7825e5f1d449f480eb852bf43"

    def install
      bin.install "zshhistorymasker"
    end
  end

  test do
    system "#{bin}/zshhistorymasker --version"
  end
end
