cask "bettercapture" do
  version "2026.1.1"
  sha256 "7a240315aa1b466b2c79a5dc0cb7553b84217d3bf9cd4e94a9a400b9aa9112c9"

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
