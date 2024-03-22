InlineSvg.configure do |config|
  config.asset_file = InlineSvg::CachedAssetFile.new(
    paths: %W[#{Rails.root}/app/assets/images #{Rails.root}/app/assets/images/icons],
    filters: /\.svg/
  )
end
