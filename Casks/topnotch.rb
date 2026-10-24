cask "topnotch" do
  version "0.1.3"
  sha256 "e9db4d8b056785b7406a2553c75135455e20fa069c535b2ad064517b8c9b4260"

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
