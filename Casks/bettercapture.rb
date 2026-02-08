cask "bettercapture" do
  version "2026.1.2"
  sha256 "71faf20f5215967b76be6a580e566d649ddb727b2d53df4da327d6496911cf49"

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
