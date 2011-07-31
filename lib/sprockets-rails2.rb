require 'sprockets/rails2/asset_pipeline'
require 'sprockets/rails2/asset_helpers'
require 'sprockets/rails2/middleware'

ActionController::Dispatcher.middleware.use Sprockets::Rails2::Middleware
