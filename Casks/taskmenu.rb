cask "taskmenu" do
  version "1.4.0"
  sha256 "70fec2738d54ebfc7ccc021699fad754c008d27cadc9645c6f0afd77360068e5"

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
