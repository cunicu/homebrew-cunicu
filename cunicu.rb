# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.5.60"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/cunicu/cunicu/releases/download/v0.5.60/cunicu_0.5.60_darwin_all.tar.gz"
    sha256 "fbfab4859a657bd0d5b2bf8b0628278bd24c06066eb9551564d1cf3d6fa69863"

    def install
      bin.install "cunicu"
      etc.install "etc/cunicu.yaml", "etc/cunicu.advanced.yaml"
      bash_completion.install "completions/cunicu.bash" => "cunicu"
      zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
      fish_completion.install "completions/cunicu.fish"
      man1.install Dir["man/*.1"]
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.60/cunicu_0.5.60_linux_amd64.tar.gz"
        sha256 "959635791809fbc5ef91b8b3b8e9d9e205694cd0bb3cd86350ae36711d2ecbd5"

        def install
          bin.install "cunicu"
          etc.install "etc/cunicu.yaml", "etc/cunicu.advanced.yaml"
          bash_completion.install "completions/cunicu.bash" => "cunicu"
          zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
          fish_completion.install "completions/cunicu.fish"
          man1.install Dir["man/*.1"]
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.60/cunicu_0.5.60_linux_arm64.tar.gz"
        sha256 "4496f00b2b19bc468c4e2ddff64097c7b12e7b163dc491ef3ad713ea20d7221d"

        def install
          bin.install "cunicu"
          etc.install "etc/cunicu.yaml", "etc/cunicu.advanced.yaml"
          bash_completion.install "completions/cunicu.bash" => "cunicu"
          zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
          fish_completion.install "completions/cunicu.fish"
          man1.install Dir["man/*.1"]
        end
      end
    end
  end
end
