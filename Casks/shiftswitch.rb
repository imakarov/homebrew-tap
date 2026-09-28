cask "shiftswitch" do
  version "1.0.1"
  sha256 "dc5721981f4267273af4bb45a9734f941ba46db97f35cb624eae0acac0bee35b"

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
