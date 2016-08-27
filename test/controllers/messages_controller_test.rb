require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "Successful post" do
    post :create, message: {
      name: 'cornholio',
      email: 'cornholio@example.com',
      number: '222-222-2222',
      content: 'bai'
    }

    assert_redirected_to new_message_path
  end

end
