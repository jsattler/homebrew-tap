cask "bettercapture" do
  version "2026.2"
  sha256 "e5f8e00d05511cc6328fd9ebe059301c1bf99a09939d931e30879ed89a37eeb9"

  url "https://github.com/jsattler/BetterCapture/releases/download/v#{version}/BetterCapture-#{version}-arm64.dmg",
      verified: "github.com/jsattler/BetterCapture/"
  name "BetterCapture"
  desc "The macOS screen recorder you deserve - always free and open source"
  homepage "https://github.com/jsattler/BetterCapture"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "BetterCapture.app"

  zap trash: [
    "~/Library/Application Support/BetterCapture",
    "~/Library/Caches/com.sattlerjoshua.BetterCapture",
    "~/Library/Preferences/com.sattlerjoshua.BetterCapture.plist",
  ]
end
