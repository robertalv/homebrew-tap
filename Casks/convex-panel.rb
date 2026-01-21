cask "convex-panel" do
  version "0.3.9"

  if Hardware::CPU.arm?
    sha256 "4cf7b7a5a60dc83a0f31d6fd0a5ec043ad2df945a71ed0864adef0be1839e399"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_#{version}_aarch64.dmg"
  else
    sha256 "91e041c5bcf85a35c7a2a14d114643f7db014529532b453666e8551d9fc54c1b"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_#{version}_x64.dmg"
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
