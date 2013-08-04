require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "That /login route opens the login page" do 
		get '/login'
		assert_response :success
	end
	
	test "That /register route opens the login page" do 
		get '/register'
		assert_response :success
	end
	
	test "That /logout route opens the logout page" do 
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end
	
	test "that a profile page works" do
		get '/jasonseifer'
		assert_response :success
	end
end
