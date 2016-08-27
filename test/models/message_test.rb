require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test 'responds to name, number, email and content' do
    msg = Message.new
    [:name, :number, :email, :content].each do |attr|
      assert msg.respond_to? attr
    end
  end

  test 'should accept valid attributes' do
    valid_attrs = {
      name: 'brandon',
      email: 'brandon@example.com',
      number: '111-111-1111',
      content: 'qwerty'
    }

    msg = Message.new valid_attrs

    assert msg.valid?
  end

  test 'attributes can not be blank' do
    msg = Message.new
    refute msg.valid?
  end
end
