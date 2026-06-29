cask "hexediff" do
  version "0.2.019"
  sha256 "ddde23c8d51db0d60b1e9a897d3356a92c8c3b6c4eae3d36ecadc020bc7eab84"

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
