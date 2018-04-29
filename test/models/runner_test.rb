require 'test_helper'

class RunnerTest < ActiveSupport::TestCase
 test "saves with all attributes" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(area: area, first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: false)
    assert runner.save, "An attribute is missing"
  end

  test "does not save without area" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: true)
    assert_not runner.save, "Should not save without an area assigned"
  end

  test "does not save without first name" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(area: area, last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: true)
    assert_not runner.save, "Should not save without a first name assigned"
  end

  test "does not save without last name" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", area: area, email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: true)
    assert_not runner.save, "Should not save without last name assigned"
  end

  test "does not save without email" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", area: area, status: "lapsed", group_run: true, mission: true, coach_run: true)
    assert_not runner.save, "Should not save without an emaul assigned"
  end

  test "does not save without status" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", area: area, group_run: true, mission: true, coach_run: true)
    assert_not runner.save, "Should not save without a status assigned"
  end

  test "does not save without group run" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", area: area, mission: true, coach_run: true)
    assert_not runner.save, "Should not save without group run status assigned"
  end

  test "does not save without mission" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, area: area, coach_run: true)
    assert_not runner.save, "Should not save without an mission assigned"
  end

  test "does not save without coach run status" do
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    area = Area.new(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, area: area)
    assert_not runner.save, "Should not save without a coach run status assigned"
  end

end
