require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should have valid attributes" do
    assert_equal "Name", User.human_attribute_name(:name)
    assert_equal "Email", User.human_attribute_name(:email)
  end

  test "should validate presence of name" do
    user = User.new(name: nil)
    assert_not user.valid?
    assert_equal ["Name can't be blank"], user.errors[:name]
  end

  test "should validate presence of email" do
    user = User.new(email: nil)
    assert_not user.valid?
    assert_equal ["Email can't be blank"], user.errors[:email]
  end

  test "should validate uniqueness of email" do
    user1 = User.create(name: "John Doe", email: "john@example.com")
    user2 = User.new(name: "Jane Smith", email: "john@example.com")

    assert_not user2.valid?
    assert_equal ["Email has already been taken"], user2.errors[:email]
  end
end
