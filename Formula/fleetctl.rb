class Fleetctl < Formula
  desc "CLI tool for Fleet device management (https://fleetdm.com)"
  homepage "https://fleetdm.com"
  version "4.86.1"
  license "MIT"

  on_macos do
    url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_macos.tar.gz"
    sha256 "d4f7db86dcb60dc241177505819c20619401dbbbd6003c0091a2888e1d921d36"
  end

  on_linux do
    on_intel do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_amd64.tar.gz"
      sha256 "0c5b031e5e973e3f8f96307cfdaa55a33a0ab4e7859eee52150bda51572c7349"
    end

    on_arm do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_arm64.tar.gz"
      sha256 "eab4e7814d6bd76ec07b662833a0289ecade4b9226efb24b8727459bfc3f3fcc"
    end
  end

  def install
    bin.install "fleetctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleetctl --version")
  end
end
