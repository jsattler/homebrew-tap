cask "bettercapture" do
  version "2026.1.4"
  sha256 "c3dc8d7e373ee1d07274f8ee70a755600f9d378afdf03b8ac1491927993fb896"

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
