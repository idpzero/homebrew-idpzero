# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpzero < Formula
  desc ""
  homepage "https://idpzero.dev"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/idpzero/idpzero/releases/download/v0.1.4/idpzero_Darwin_x86_64.tar.gz"
      sha256 "8eaee6e4b79ce0a3431509f350f5c9db860508ceaaf768c9a0cb9a576501564d"

      def install
        bin.install "idpzero"
      end
    end
    on_arm do
      url "https://github.com/idpzero/idpzero/releases/download/v0.1.4/idpzero_Darwin_arm64.tar.gz"
      sha256 "fc12e3426513cccc0ec7d7069c1c864dc50ab652412129503545f0e6cf206479"

      def install
        bin.install "idpzero"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/idpzero/idpzero/releases/download/v0.1.4/idpzero_Linux_x86_64.tar.gz"
        sha256 "5525259d5a97ce56584a91364c8b1f5f6ead895726ae1c046d2c0bdb7d0bc0a4"

        def install
          bin.install "idpzero"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/idpzero/idpzero/releases/download/v0.1.4/idpzero_Linux_arm64.tar.gz"
        sha256 "ba62e6dae4e940e3f03293edecc77713a3d6f9df221b6d7a022e6bc1bb79b9b4"

        def install
          bin.install "idpzero"
        end
      end
    end
  end
end
