require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "won't save without password"  do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com" )
    assert_not user.save, "Saved User without a password"
  end

  test "won't save without last_name"  do
    user = User.new(first_name: "David", password: "123456", email: "davidkmorley@gmail.com" )
    assert_not user.save, "Saved User without a last name"
  end

  test "won't save without first_name"  do
    user = User.new(password: "123456", last_name: "Morley", email: "davidkmorley@gmail.com" )
    assert_not user.save, "Saved User without a first name"
  end

  test "won't save without email"  do
    user = User.new(first_name: "David", last_name: "Morley", password: "123456" )
    assert_not user.save, "Saved User without a email"
  end

  test "user saves with relevant arguments" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    assert user.save, "Lacking a required attribute"
  end
end
