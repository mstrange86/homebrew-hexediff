cask "hexediff" do
  version "0.2.039"
  sha256 "6c5b12f366b03c18fb2ceffe6e5e9dbb1e8a4a159f44d624155fac463b78ca44"

  url "https://github.com/mstrange86/homebrew-hexediff/releases/download/v#{version}/hexediff-#{version}.zip"
  name "hexediff"
  desc "Fast native macOS visual diff & merge tool"
  homepage "https://github.com/mstrange86/homebrew-hexediff"

  app "hexediff.app"
  # hexediff is also a CLI (`hexediff a b`, `install-git`); symlink it onto PATH
  # (-> #{HOMEBREW_PREFIX}/bin/hexediff) while the GUI bundle stays in /Applications.
  binary "#{appdir}/hexediff.app/Contents/MacOS/hexediff"

  # `brew uninstall --zap` also removes the saved settings.
  zap trash: [
    "~/Library/Application Support/hexediff",
  ]
end
