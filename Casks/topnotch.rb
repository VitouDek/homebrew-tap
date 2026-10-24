cask "topnotch" do
  version "0.1.0"
  sha256 "7e68640a08ba3cff58f8fb6a77ee8610587bba07f0a269c78ce8d07710504224"

  # Private release asset: downloaded through the GitHub API with the installer's own token
  # (HOMEBREW_GITHUB_API_TOKEN, read access to VitouDek/TopNotch). Replace ASSET_ID after each release.
  url "https://api.github.com/repos/VitouDek/TopNotch/releases/assets/671786890",
      header: [
        "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}",
        "Accept: application/octet-stream",
      ]
  name "TopNotch"
  desc "Live island for the MacBook notch"
  homepage "https://github.com/VitouDek/TopNotch"

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
