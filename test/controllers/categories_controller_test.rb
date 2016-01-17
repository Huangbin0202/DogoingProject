require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = categories(:one)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categories" do
    assert_difference('categories.count') do
      post :create, category: { created_at:@category.created_at}
    end
    assert_redirected_to category_path(assigns(:user))
  end
end