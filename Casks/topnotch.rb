cask "topnotch" do
  version "0.1.1"
  sha256 "3a7fd6f836368511dc9ed39c34de598dcef31eab25fb5d41dde31a112860fa8d"

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
