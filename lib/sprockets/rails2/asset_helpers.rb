module ActionView
  module Helpers
    def rewrite_asset_path(source)
      asset_path = source.gsub(%r{^/}, "") # remove the leading /
      if Rails.asset_pipeline.find_asset(asset_path)
        Rails.asset_pipeline.path(source, true, "assets")
      else
        source
      end
    end
  end
end
