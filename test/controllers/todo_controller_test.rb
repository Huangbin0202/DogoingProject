require 'test_helper'

class TodosControllerTest < ActionController::TestCase
  setup do
    @todo = todos(:one)
  end
  
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get completed" do
    get :completed
    assert_response :success
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo" do
    assert_difference('todo') do
      post :create, todo: { title: @todo.title, description: @todo.description, categories: @user_categories.id,deadline: @todo.deadline,created_at:@todo.created_at }
    end

    assert_redirected_to root_path
  end

  test "should show" do
    get :show, id: @todo
    assert_response :success
  end

  test "should  edit todos" do
    get :edit, id: @todo
    assert_response :success
  end

  test "should update todos" do
    patch :update, id: @todos, todo: { title: @todos.title, description: @todos.description, categories: @user_categories.id,deadline: @todos.deadline,created_at:@todos.created_at }
    assert_redirected_to root_path
  end
  
  test "should update todo" do
    patch :update, id: @todo, todo: { title: @todo.title, description: @todo.description, categories: @user_categories.id,deadline: @todo.deadline,created_at:@todo.created_at }
    assert_redirected_to root_path
  end
  
  test "should destroy todo" do
    assert_difference('todos.count', -1) do
      delete :destroy, id: @todos
    end

    assert_redirected_to root_path
  end
end