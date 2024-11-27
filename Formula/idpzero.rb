class Idpzero < Formula
  desc "Local IdP for development and testing purposes"
  homepage "https://idpzero.dev"
  url "https://github.com/idpzero/idpzero/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d04494663687485a0308e61c9ed93692edb1cb8c075db49a35f3d98707be0c4b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test idpzero`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system bin/"idpzero", "init"
  end
end
