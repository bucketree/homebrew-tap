cask "bucketree" do
  version "1.0.0,694"
  sha256 "61db7407bf337f89c1aae51280edc9d2830cf727f1089fb9e313b8707c229a9e"

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
  depends_on macos: ">= :tahoe"

  app "Bucketree.app"

  zap trash: [
    "~/Library/Containers/com.webupp.bucketree",
  ]
end
