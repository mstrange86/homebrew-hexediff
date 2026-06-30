cask "hexediff" do
  version "0.2.021"
  sha256 "3ac99dc917a76e8ae8650f76bb8a65010d8284cce0869217c197effd1d16dfa0"

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
