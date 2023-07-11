require "test_helper"

class PublicationsControllerTest < ActionDispatch::IntegrationTest
include Devise::Test::IntegrationHelpers
  setup do
    @publication = publications(:one)
  end

  test "should get new" do
    sign_in users(:one)
    get new_publication_url
    assert_response :success
  end
end
