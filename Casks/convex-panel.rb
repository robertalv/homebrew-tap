cask "convex-panel" do
  version "0.3.17"

  if Hardware::CPU.arm?
    sha256 "605dc90fd33431e6bfefc0a715a9507c70787e485bfee6b91aca18fef6fa43bb"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_0.3.17_aarch64.dmg"
  else
    sha256 "0f7101bc0870b6892b9732baa1ad89d10195f2b85a3246c08ce7ee5a555bfb26"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_0.3.17_x64.dmg"
  end

  name "Convex Panel"
  desc "Debugging and monitoring tool for Convex applications"
  homepage "https://convexpanel.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Convex Panel.app"

  zap trash: [
    "~/Library/Application Support/dev.convexpanel.desktop",
    "~/Library/Caches/dev.convexpanel.desktop",
    "~/Library/Preferences/dev.convexpanel.desktop.plist",
    "~/Library/Saved Application State/dev.convexpanel.desktop.savedState",
  ]
end
