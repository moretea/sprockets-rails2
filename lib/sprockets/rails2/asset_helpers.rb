module ActionView
  module Helpers
    def rewrite_asset_path(source)
      asset_path = source.gsub(%r{^/}, "") # remove the leading /
      if asset = Rails.asset_pipeline[asset_path]
        "/assets/" + asset.digest_path
        # Rails.asset_pipeline.path(source, true, "assets")
      else
        source
      end
    end
  end
end
