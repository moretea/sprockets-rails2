require File.join(File.dirname(__FILE__), "test_helper")

class SprocketRails2Test < ActionController::IntegrationTest
  def test_add_rails_asset_pipeline
    assert Rails.asset_pipeline.instance_of? Sprockets::Environment
  end

  def test_fingerprint_in_stylesheet_urls
    get "/test"
    assert response.body =~ /test-a2eac1b10320f24cdd178f53df2effdd.css/
  end

  def test_fingerprint_in_javascript_urls
    get "/test"
    assert response.body =~ /application-94d362ea70095a9c3b5181d17e793524.js/
  end

  def test_fingerprint_in_image_urls
    get "/test"
    assert response.body =~ /rails-9add994b9c64a94f1557f1241c433c67.png/
  end

  def test_respond_to_requests_under_assets
    get "/assets/images/rails-9add994b9c64a94f1557f1241c433c67.png"
    assert_response :success
  end

  def test_should_not_modify_url_for_non_existing_assets
    get "/test"
    assert response.body =~ %r{src="/images/non-existing-file.png"}
  end

  def test_respond_with_404_for_assets_with_invalid_fingerprint
    get "/assets/images/rails-db31f719034fee4.png"
    assert_response :missing
  end
end
