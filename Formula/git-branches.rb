# typed: false
# frozen_string_literal: true

class GitBranches < Formula
  desc "An alternative to `git branch` with some extra information."
  homepage "https://github.com/cdevoogd/git-branches"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cdevoogd/git-branches/releases/download/v0.4.1/git-branches_Darwin_x86_64.tar.gz"
      sha256 "609dad748fbd2f5e8aa226be3ae3bc2be59432cb732bb8fa82af6fa51f32a5f5"

      def install
        bin.install "git-branches"
      end
    end
    on_arm do
      url "https://github.com/cdevoogd/git-branches/releases/download/v0.4.1/git-branches_Darwin_arm64.tar.gz"
      sha256 "6069d278abdeada5fd55354bb380df36bb0a57622ac95e878717aa95d3e0ad41"

      def install
        bin.install "git-branches"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cdevoogd/git-branches/releases/download/v0.4.1/git-branches_Linux_x86_64.tar.gz"
        sha256 "37063984c991d30b32e5ab46f1db7b11c1599927da3633095bfccaa6944a06ef"

        def install
          bin.install "git-branches"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cdevoogd/git-branches/releases/download/v0.4.1/git-branches_Linux_arm64.tar.gz"
        sha256 "cd381b0b2b9913cf4695a09458fb8b4044c8dd55e67e8fe80c2776a11df5d4d8"

        def install
          bin.install "git-branches"
        end
      end
    end
  end
end
