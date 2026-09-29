cask "shiftswitch" do
  version "1.1.0"
  sha256 "49ff741d7fcecd42be20414611da9e07109957acc6b2ea26cd36ab2b021bf9fa"

  url "https://github.com/imakarov/shiftswitch/releases/download/v#{version}/ShiftSwitch.dmg"
  name "ShiftSwitch"
  desc "Tap Shift to retype the last word in the other keyboard layout"
  homepage "https://imakarov.us/product-shiftswitch.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "ShiftSwitch.app"

  uninstall quit: "us.imakarov.shiftswitch"

  zap trash: "~/Library/Preferences/us.imakarov.shiftswitch.plist"
end
