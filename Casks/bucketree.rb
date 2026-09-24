cask "bucketree" do
  version "1.0.1,811"
  sha256 "e6b5358c3ee3cdd21f807a74bf92fef63e4320cdef9f72accb88eacfe8930b85"

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
