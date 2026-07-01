cask "hexediff" do
  version "0.2.040"
  sha256 "89c37c0fcadc3f5186951e637e3dc9bcc5042078d05c25be4818d92233290a49"

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
