cask "topnotch" do
  version "0.1.6"
  sha256 "d9ab63a51ff0a4cffb6a1aece08fac126ac31035f53d624407c90a3389bb4ab0"

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
