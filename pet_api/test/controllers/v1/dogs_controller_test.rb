require 'test_helper'

class V1::DogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get v1_dogs_index_url
    assert_response :success
  end

end
