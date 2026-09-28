cask "shiftswitch" do
  version "1.0.0"
  sha256 "765778ec4239165c3daf967e9da16458249133413e30d9fa7cdb813f93c3322a"

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
