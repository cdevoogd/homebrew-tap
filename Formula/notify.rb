# typed: false
# frozen_string_literal: true

class Notify < Formula
  desc "A tool to send notifications to your phone when a command is complete."
  homepage "https://github.com/cdevoogd/notify"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cdevoogd/notify/releases/download/v0.2.1/notify_Darwin_x86_64.tar.gz"
      sha256 "756a7b06bf692e9ae76158da07a2659d39e6531622109893f164afa288d4545a"

      def install
        bin.install "notify"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cdevoogd/notify/releases/download/v0.2.1/notify_Darwin_arm64.tar.gz"
      sha256 "70ec1b4e4a104e87a79f8dea1364d454baea09504e8eda6167eb4ddce884fcc5"

      def install
        bin.install "notify"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cdevoogd/notify/releases/download/v0.2.1/notify_Linux_arm64.tar.gz"
      sha256 "5bbd8357127218b482e703fe44e5b79d50449237a3383bc355ccf73334d55370"

      def install
        bin.install "notify"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cdevoogd/notify/releases/download/v0.2.1/notify_Linux_x86_64.tar.gz"
      sha256 "b286e5f418f4f36aed160c7f0e068c6da1310444782124d6768706582edd3a49"

      def install
        bin.install "notify"
      end
    end
  end
end
