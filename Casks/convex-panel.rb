cask "convex-panel" do
  version "0.3.15"

  if Hardware::CPU.arm?
    sha256 "bb45d6e8ed34ea76aaf481db59346601c0ec0899180e24e2472fef6bf6f014e9"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_0.3.12_aarch64.dmg"
  else
    sha256 "cf3379d6a1e62f5f1217af95bee90e97e7d1fb29163548168456249d9b713ce3"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_0.3.12_x64.dmg"
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
