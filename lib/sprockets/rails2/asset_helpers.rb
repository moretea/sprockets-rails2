module ActionView
  module Helpers
    def rewrite_asset_path(source)
      asset_path = source.gsub(%r{^/}, "") # remove the leading /
      if asset = Rails.asset_pipeline[asset_path]
        "/assets/" + asset.digest_path
      else
        source
      end
    end

    alias :asset_path :rewrite_asset_path
  end
end
