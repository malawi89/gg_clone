require 'test_helper'

class AreaTest < ActiveSupport::TestCase
 test "should save with relevant attributes" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    assert area.save, "Should save with name and trainer attributes"
  end

  test "should not save without a name" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(user: user)

    assert_not area.save, "Area created with no name assigned"
  end

  test "should not save without a trainer" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth")

    assert_not area.save, "Area created with no trainer assigned"
  end
end
