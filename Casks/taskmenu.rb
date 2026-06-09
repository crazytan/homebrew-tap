cask "taskmenu" do
  version "1.2.0"
  sha256 "6851c5bd776c159223b29c43908e901b68c87680a66ab7b086c52f8d33ebb666"

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
