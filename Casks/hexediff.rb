cask "hexediff" do
  version "0.2.003"
  sha256 "42b478754500fe4abb71efe50c2200ddb4b95ee6a65814da92c41e457b0cc4f9"

  url "https://github.com/mstrange86/homebrew-hexediff/releases/download/v#{version}/hexediff-#{version}.zip"
  name "hexediff"
  desc "Fast native macOS visual diff & merge tool"
  homepage "https://github.com/mstrange86/homebrew-hexediff"

  app "hexediff.app"

  zap trash: [
    "~/Library/Application Support/hexediff",
  ]
end
