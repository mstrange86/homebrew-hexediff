cask "hexediff" do
  version "0.2.017"
  sha256 "3c0866c3d88ba94f99b6099e5f68fa977807f16e6f21893bdd68897d9b32891c"

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
