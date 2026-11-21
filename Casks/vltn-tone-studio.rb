cask "vltn-tone-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "d9a04b8acf0ae15a3d778ce88cab74453b7ad476232a3af7bc82d66f4698d0fe",
         intel: "c081387afbf54906a30fbad653ab468e52b0ba211c57b3ac0a14d0f91da6d4ea"

  url "https://github.com/grzmol/VLTN-Tone-Studio/releases/download/v#{version}/vltn-tone-studio-#{version}-#{arch}.dmg"
  name "VLTN Tone Studio"
  desc "Editor and librarian for Valeton multi-effects pedals"
  homepage "https://github.com/grzmol/VLTN-Tone-Studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VLTN Tone Studio.app"

  caveats <<~EOS
    VLTN Tone Studio is not signed or notarized yet, so macOS may say the app is damaged or cannot be opened.
    Run this once after the install:
      xattr -dr com.apple.quarantine "/Applications/VLTN Tone Studio.app"
  EOS
end
