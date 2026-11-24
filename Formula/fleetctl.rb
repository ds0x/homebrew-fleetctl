class Fleetctl < Formula
  desc "CLI tool for Fleet device management (https://fleetdm.com)"
  homepage "https://fleetdm.com"
  version "4.96.0"
  license "MIT"

  on_macos do
    url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_macos.tar.gz"
    sha256 "eeb54b8e702071763bfaf9cb41afa66708e9ef7811f17fb709bf20b2ada06e2d"
  end

  on_linux do
    on_intel do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_amd64.tar.gz"
      sha256 "77eb0a55e94874dbccaf5f77b3d0df9615cb24fe6c9942d427ae2471a3f43b33"
    end

    on_arm do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_arm64.tar.gz"
      sha256 "76bbeac2c7cd42909fd74089d063d71e07e94b63fc73c2ba9fdc1c324ed1701f"
    end
  end

  def install
    bin.install "fleetctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleetctl --version")
  end
end
