require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  
  test "should get home" do
    get :home, @base_title
    assert_response :success
    assert_select "title", "Home | " + @base_title
  end

  test "should get help" do
    get :help, @base_title
    assert_response :success
    assert_select "title", "Help | " + @base_title
  end
  
  test "should get about" do
    get :about, @base_title
    assert_response :success
    assert_select "title", "About | " + @base_title
  end
  
  test "should get contact" do
    get :contact, @base_title
    assert_response :success
    assert_select "title", "Contact | " + @base_title
  end
end