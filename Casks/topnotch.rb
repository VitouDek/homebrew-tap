cask "topnotch" do
  version "0.1.4"
  sha256 "90b18edd39cc72c6857917496e506a8b128bfb400cbe8cec87bcad74161fe18c"

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
