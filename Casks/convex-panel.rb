cask "convex-panel" do
  version "0.3.12"

  if Hardware::CPU.arm?
    sha256 "287157fa79c59ea6875364a44d14ebe5b5c318320d413b7c9b520366816b20f6"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_#{version}_aarch64.dmg"
  else
    sha256 "e4ef94e7a71dc1bfabcaf118c810ff273a04846593b12b54c4417ef665d59fe1"
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
