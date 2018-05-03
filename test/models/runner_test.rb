require 'test_helper'

class RunnerTest < ActiveSupport::TestCase
 test "saves with all attributes" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(area: area, first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: false)
    runner.remote_photo_url = url
    assert runner.save, "An attribute is missing"
  end

  test "does not save without area" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without an area assigned"
  end

  test "does not save without first name" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(area: area, last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without a first name assigned"
  end

  test "does not save without last name" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", area: area, email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without last name assigned"
  end

  test "does not save without email" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", area: area, status: "lapsed", group_run: true, mission: true, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without an emaul assigned"
  end

  test "does not save without status" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", area: area, group_run: true, mission: true, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without a status assigned"
  end

  test "does not save without group run" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", area: area, mission: true, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without group run status assigned"
  end

  test "does not save without mission" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, area: area, coach_run: true)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without an mission assigned"
  end

  test "does not save without coach run status" do
    url = "http://res.cloudinary.com/dn2idxe8p/image/upload/v1525273480/fobrdql7ebbkdjjd5l0w.jpg"
    user = User.new(first_name: "David", last_name: "Morley", email: "davidkmorley@gmail.com", password: "123456")
    user.remote_photo_url = url
    user.save
    area = Area.create(name: "Wandsworth", user: user)
    runner = Runner.new(first_name: "Dave", last_name: "Morley", email: "david@gmail.com", status: "lapsed", group_run: true, mission: true, area: area)
    runner.remote_photo_url = url
    assert_not runner.save, "Should not save without a coach run status assigned"
  end

end
