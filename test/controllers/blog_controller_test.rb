require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get blog_title:string_url
    assert_response :success
  end

  test "should get content:string" do
    get blog_content:string_url
    assert_response :success
  end

end
