require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "show create user" do
  	get new_user_path
  	  assert_no_difference 'User.count' do
        post users_path, user: {username: "", 
      	                       password: "foo",
      	                        password_confirmation: "bar" }
  	  end
  	  assert_template 'users/new'
    end
  end
  
end
