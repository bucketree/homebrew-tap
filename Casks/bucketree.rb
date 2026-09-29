cask "bucketree" do
  version "1.2.2,881"
  sha256 "1027aa42909383448b5acf651a9ed16f164c39d6a04c6adc58e5176cdae433cf"

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
