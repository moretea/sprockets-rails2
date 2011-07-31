
module Sprockets
  module Rails2
    class Middleware
      def initialize(app)
        @app = app
      end

      def call(env)
        return @app.call(env) unless env['PATH_INFO'] =~ /^\/assets/
        env['PATH_INFO'] = env['PATH_INFO'].gsub(/^\/assets/, "")
        env['SCRIPT_INFO'] = "" if env['SCRIPT_INFO'].nil?
        env['SCRIPT_INFO'] = env['SCRIPT_INFO'] + "/assets"
        Rails.asset_pipeline.call(env)
      end
    end
  end
end
