cask "taskmenu" do
  version "1.3.0"
  sha256 "dedc46c030ae2dac1f25ec7799367df42caf899b6c11d62aa1ea099c96bb9029"

  url "https://github.com/crazytan/TaskMenu/releases/download/v#{version}/TaskMenu-#{version}.dmg",
      verified: "github.com/crazytan/TaskMenu/"
  name "TaskMenu"
  desc "Native macOS menu bar app for Google Tasks"
  homepage "https://taskmenu.crazytan.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "TaskMenu.app"

  uninstall login_item: "TaskMenu",
            quit:      "dev.crazytan.TaskMenu"

  zap trash: [
    "~/Library/Application Support/TaskMenu",
    "~/Library/Containers/dev.crazytan.TaskMenu",
    "~/Library/Preferences/dev.crazytan.TaskMenu.plist",
  ]
end
