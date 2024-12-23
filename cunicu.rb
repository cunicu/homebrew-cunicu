# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.6.5"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/cunicu/cunicu/releases/download/v0.6.5/cunicu_0.6.5_darwin_all.tar.gz"
    sha256 "4bb317bdfea5316a4d57371795dccf4b4eca85aa132d76931b36b96da28dd76c"

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
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cunicu/cunicu/releases/download/v0.6.5/cunicu_0.6.5_linux_amd64.tar.gz"
        sha256 "66f4e55cf2156c1878934a2d8142f8dfdd6445d8ea38e717d6d13e4fc0673451"

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
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cunicu/cunicu/releases/download/v0.6.5/cunicu_0.6.5_linux_arm64.tar.gz"
        sha256 "e6622ae45abfec30602676d5c09d1235ee6ee82ef1c99351aca4a32fae3bda66"

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
