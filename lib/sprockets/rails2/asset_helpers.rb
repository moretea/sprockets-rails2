module ActionView
  module Helpers
    def rewrite_asset_path(source)
      Rails.asset_pipeline.path(source, true, "assets")
    end
  end
end


