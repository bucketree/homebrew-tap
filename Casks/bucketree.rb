cask "bucketree" do
  version "1.3.1,928"
  sha256 "ffbbf3004cffec4fe2cb24b13a9f243e4f4fc765f6dd37bb2eefeb4ccae399a6"

  url "https://updates.bucketree.app/Bucketree-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Bucketree"
  desc "Native Mac manager for Backblaze B2 buckets, keys, storage and replication"
  homepage "https://bucketree.app/"

  livecheck do
    url "https://updates.bucketree.app/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Bucketree.app"

  zap trash: [
    "~/Library/Containers/com.webupp.bucketree",
  ]
end
