class Terrarium < Formula
  desc "Create reusable Terraform templates and build powerful platforms"
  homepage "https://github.com/cldcvr/terrarium"
  version "0.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cldcvr/terrarium/releases/download/v0.5/terrarium-v0.5-macos-arm64.tar.gz"
      sha256 "55c7fc7b329ae3a8738c58724f34db6edbf35c0dfd385a59600bd698f61a2b30"

      def install
        bin.install "terrarium"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cldcvr/terrarium/releases/download/v0.6/terrarium-v0.6-macos-amd64.tar.gz"
      sha256 "9bc5d399a12d3c92562eaf8cf3c1dac2186e4297ff60a90406de84a501fe5d99"

      def install
        bin.install "terrarium"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cldcvr/terrarium/releases/download/v0.6/terrarium-v0.6-linux-amd64.tar.gz"
      sha256 "fba101435aab763d20e3b90a8411b41801bd3827ef0b6c3acbf925ca4823b153"

      def install
        bin.install "terrarium"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cldcvr/terrarium/releases/download/v0.6/terrarium-v0.6-linux-arm64.tar.gz"
      sha256 "167da46168389114691f0faf4eb2c7165b092833475f0b766d10f6887f34b76d"

      def install
        bin.install "terrarium"
      end
    end
  end

  test do
    system "#{bin}/terrarium", "version"
  end
end
