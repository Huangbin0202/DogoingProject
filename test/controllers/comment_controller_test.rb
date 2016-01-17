require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end
  test "should create comment" do
    assert_difference('comment') do
      post :create, todo_item: { body: @comment.body }
    end
    assert_redirected_to root_path
  end
end
