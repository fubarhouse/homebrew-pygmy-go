# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PygmyGo < Formula
  desc "amazee.io's local development helper tool"
  homepage "https://github.com/fubarhouse/pygmy-go"
  version "0.7.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.7.0/pygmy-go_0.7.0_darwin_amd64.tar.gz"
      sha256 "95aae11ac0e3d406fc1aa1105712db9ce4552e2682a0874d2f8fc77043c5a946"
    end
    if Hardware::CPU.arm?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.7.0/pygmy-go_0.7.0_darwin_arm64.tar.gz"
      sha256 "73d96933ab4c7f036b75f09dc87a1749951e6065def231b0397022ce95f0bdfd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.7.0/pygmy-go_0.7.0_linux_amd64.tar.gz"
      sha256 "b9155e031f8aaeed560f6d06edc6b2ff25b25558f24befe9aaf7272620106c73"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.7.0/pygmy-go_0.7.0_linux_armv6.tar.gz"
      sha256 "97225cf3d011c7f0147a7c03658bd879c6248139c093069489c38249e61d4483"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fubarhouse/pygmy-go/releases/download/v0.7.0/pygmy-go_0.7.0_linux_arm64.tar.gz"
      sha256 "fef9e0f2553d0a25676e479339c5d7bafb5e45af6e1babee94eee046a9b6be2c"
    end
  end

  def install
    bin.install "pygmy-go"
  end

  test do
    system "#{bin}/pygmy-go version"
  end
end
