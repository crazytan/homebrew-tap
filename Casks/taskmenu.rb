cask "taskmenu" do
  version "1.5.0"
  sha256 "7be55090956b0eada2cf2e7f2d3ac652b9f20b007b25fcabf3daae370b31159d"

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
