cask "convex-panel" do
  version "0.3.13"

  if Hardware::CPU.arm?
    sha256 "b058bd88551dae593c7bfecf5b3d3c85c80bbd096841887c930ccafe076a127c"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_#{version}_aarch64.dmg"
  else
    sha256 "835aa6bccf0da9d54090f4c42042883eebb6cc5147ae4a9590409f58dc4257a1"
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
