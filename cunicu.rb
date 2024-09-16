# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.5.36"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/cunicu/cunicu/releases/download/v0.5.36/cunicu_0.5.36_darwin_all.tar.gz"
    sha256 "ee13edbc67f87c5e0a7d615b2a4cf24ac3c0d0a597f2c542932c09985a8d6eb5"

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
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.36/cunicu_0.5.36_linux_amd64.tar.gz"
        sha256 "d1b594f8aa81c9aecb51189836898df5b24bd943cf332f55bd7636c9ea1b0a76"

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
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.36/cunicu_0.5.36_linux_arm64.tar.gz"
        sha256 "54f736ee3cf3c7910c43389091670714a1994ee6380fb15ca15ee780392540df"

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
