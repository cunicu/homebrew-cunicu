# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cunicu < Formula
  desc "A zeroconf peer-to-peer mesh VPN using Wireguard® and Interactive Connectivity Establishment (ICE)"
  homepage "https://cunicu.li"
  version "0.3.3"
  license "Apache-2.0"

  depends_on "bash-completion" => :optional
  depends_on "wireguard-tools" => :optional

  on_macos do
    url "https://github.com/stv0g/cunicu/releases/download/v0.3.3/cunicu_0.3.3_darwin_all.tar.gz"
    sha256 "1ae5df0980b8a668c0639d4acce1b54d56e8eec08e37ff773cead84cdd8ee354"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stv0g/cunicu/releases/download/v0.3.3/cunicu_0.3.3_linux_arm64.tar.gz"
      sha256 "c0a60db2902333ea488b5cfd12a4893ad78f6522136cdca0068cfb96d0188756"

      def install
        bin.install "cunicu"
        etc.install "etc/cunicu.yaml", "etc/cunicu.advanced.yaml"
        bash_completion.install "completions/cunicu.bash" => "cunicu"
        zsh_completion.install "completions/cunicu.zsh" => "_cunicu"
        fish_completion.install "completions/cunicu.fish"
        man1.install Dir["man/*.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/stv0g/cunicu/releases/download/v0.3.3/cunicu_0.3.3_linux_amd64.tar.gz"
      sha256 "981a0e98641842c5f394e797b4670a1fe88726c4e4c25ffd163f1f5d21381aa0"

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
