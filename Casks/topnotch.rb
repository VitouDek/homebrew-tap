cask "topnotch" do
  version "0.1.2"
  sha256 "8645c770a6f9ec03ee5a464393f252b3b2051bdcb3c102a784350f96c7b6bd33"

  url "https://github.com/VitouDek/TopNotch-release/releases/download/v#{version}/TopNotch-#{version}.zip"
  name "TopNotch"
  desc "Live island for the MacBook notch"
  homepage "https://github.com/VitouDek/TopNotch-release"

  depends_on macos: ">= :sequoia"

  app "TopNotch.app"

  zap trash: [
    "~/Library/Application Support/TopNotch",
    "~/Library/Caches/TopNotch",
    "~/Library/Preferences/com.vitou.topnotch.plist",
  ]

  caveats <<~EOS
    TopNotch isn't notarized by Apple. The first time you open it, right-click it in
    Applications and choose Open (or System Settings → Privacy & Security → Open Anyway).
  EOS
end
