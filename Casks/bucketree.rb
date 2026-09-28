cask "bucketree" do
  version "1.2.0,861"
  sha256 "bdff9f5dca55462c31f0fb6bf8f1f5f2b38295723aff32ed990b230fedf0e009"

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
