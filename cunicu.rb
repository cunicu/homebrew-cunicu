# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.5.47"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/cunicu/cunicu/releases/download/v0.5.47/cunicu_0.5.47_darwin_all.tar.gz"
    sha256 "dba1e891d5a316059d90951bcb06b872d26bb95af7adca5ec5d0f3ed65b41593"

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
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.47/cunicu_0.5.47_linux_amd64.tar.gz"
        sha256 "f871f5b3e2f656742452b6573f29ce20be6760cc32bc2b2f79b6242728aa9c94"

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
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.47/cunicu_0.5.47_linux_arm64.tar.gz"
        sha256 "7c00750cd7f7a4f0d902fcc4f001470fb797a841a0293d96977779d729b39831"

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
