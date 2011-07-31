require File.join(File.dirname(__FILE__), "test_helper")

class SprocketRails2Test < ActionController::IntegrationTest
  def test_add_rails_asset_pipeline
    assert Rails.asset_pipeline.instance_of? Sprockets::Environment
  end

  def test_fingerprint_in_stylesheet_urls
    get "/test"
    assert response.body =~ /test-5779671c0cd90591e54659bfab06c874.css/
  end

  def test_fingerprint_in_javascript_urls
    get "/test"
    assert response.body =~ /application-04a9f7fdb12ba261d1f64cee4c4eea89.js/
  end

  def test_fingerprint_in_image_urls
    get "/test"
    assert response.body =~ /rails-db31f719034fee4df202d3c3e078f9c1.png/
  end

  def test_respond_to_requests_under_assets
    get "/assets/images/rails-db31f719034fee4df202d3c3e078f9c1.png"
    assert_response :success
  end

  def test_respond_with_404_for_assets_with_invalid_fingerprint
    get "/assets/images/rails-db31f719034fee4.png"
    assert_response :missing
  end
end
