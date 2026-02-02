cask "convex-panel" do
  version "0.3.19"

  if Hardware::CPU.arm?
    sha256 "71724a3c969e6845c13bdbc73cd838a073e4c5ee382bcb914019afd615fa271f"
    url "https://github.com/robertalv/convex-panel/releases/download/v#{version}/Convex.Panel_#{version}_aarch64.dmg"
  else
    sha256 "fd7823b1cb517b49ea942e4d599702409e56fe81b7a98be309b1582064e39232"
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
