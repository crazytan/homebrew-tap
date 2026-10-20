cask "taskmenu" do
  version "1.7.0"
  sha256 "b5e50611f1360f1df11f20941d3decce866aedb8de476e972ae5c3cf4b44de10"

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
