cask "wake" do
  version "0.2.3"
  sha256 "bba96c61ffda13a743a5cbbee29cddc6498c512442707f7467652ea5a183d66d"

  url "https://github.com/amiralibg/wake/releases/download/v#{version}/Wake-#{version}.zip"
  name "Wake"
  desc "Browser where pages are columns in a trail, not tabs in a bar"
  homepage "https://github.com/amiralibg/wake"

  livecheck do
    url "https://github.com/amiralibg/wake/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Wake.app"

  # Wake isn't signed with an Apple Developer ID yet, so macOS won't open a
  # quarantined copy. Updates come through Sparkle, which clears the flag itself.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Wake.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/app.wake.Wake",
    "~/Library/Caches/app.wake.Wake",
    "~/Library/Containers/app.wake.Wake",
  ]
end
