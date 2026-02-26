cask "pulse" do
  version "2026.1"
  sha256 "2d7f843e4eedea42720f68febb6f1c0eec925f7f10cc95db97b8414ba3879cc1"

  url "https://github.com/jsattler/Pulse/releases/download/v#{version}/Pulse-#{version}-arm64.dmg"
  name "Pulse"
  desc "A beautiful, non-intrusive service monitor that lives in your notch."
  homepage "https://github.com/jsattler/Pulse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "BetterCapture.app"

  zap trash: [
    "~/Library/Application Support/Pulse",
    "~/Library/Caches/com.sattlerjoshua.Pulse",
    "~/Library/Preferences/com.sattlerjoshua.Pulse.plist",
  ]
end
