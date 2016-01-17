require 'test_helper'

class TodosControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { name:@user.name,username: @user.username ,password_digest: @user.password_digest}
    end
    assert_redirected_to user_path(assigns(:user))
  end
  
  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end
  
  test "should update user" do
    patch :update, id: @user, user: {name: @user.name ,password_digest: @user.password_digest}
   end
    assert_redirected_to root_path
  end


  test "should update todo" do
    patch :update, id: @todos, todo: { title: @todos.title, description: @todos.description, categories: @user_categories.id,deadline: @todos.deadline,created_at:@todos.created_at }
    assert_redirected_to index
  end

  test "should destroy todo" do
    assert_difference('todos.count', -1) do
      delete :destroy, id: @todos
    end

    assert_redirected_to index
  end
end