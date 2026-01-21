cask "convex-panel" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"

  if Hardware::CPU.arm?
    sha256 "ee495d935967e31ccbe35d06d6005bd9c0172cc7a0931dba72a36b3dad04bc55"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex-Panel-macos-arm64.dmg"
  else
    sha256 "91bfadc639d0cf7ff476f711ac7c3a7f164e89bb52e11d5669b4d"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex-Panel-macos-x64.dmg"
  end

  name "Convex Panel"
  desc "Debugging and monitoring tool for Convex applications"
  homepage "https://github.com/robertalv/convex-panel"

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
