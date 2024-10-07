# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.5.44"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/cunicu/cunicu/releases/download/v0.5.44/cunicu_0.5.44_darwin_all.tar.gz"
    sha256 "4a4c22c53537ba1d62298681beb6794b7610325a4c446d5b471948f01674f88f"

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
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.44/cunicu_0.5.44_linux_amd64.tar.gz"
        sha256 "c6a0b8da9ba95052ca05b9860adbd71a0dce61204346558c92dc5c1ff1de4588"

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
        url "https://github.com/cunicu/cunicu/releases/download/v0.5.44/cunicu_0.5.44_linux_arm64.tar.gz"
        sha256 "6f031964af5e3e595ed476978d7f35551cd342c3f9cd6315a426b267065c5dcc"

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
