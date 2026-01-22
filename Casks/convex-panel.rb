cask "convex-panel" do
  version "0.3.10"

  if Hardware::CPU.arm?
    sha256 "ede29c12d3e9fa2861a8b313303ec7e639e329541b8b1b288be0bc0719d1ca18"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_#{version}_aarch64.dmg"
  else
    sha256 "ada540938c3c104ae3f5aad3970e219566b5daa436a65626907ef1536cf79577"
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
