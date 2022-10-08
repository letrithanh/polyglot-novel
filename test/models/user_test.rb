require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "User Name", email: "email@gmail.com",
                      password: "password", password_confirmation: "password")
  end

  def teardown
    @user = nil
  end

  test "the name has value must valid" do
    assert @user.valid?
  end
  
  test "the blank name must invalid" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "the name must not have length greater than 50" do
    @user.name = "n"*51
    assert_not @user.valid?
  end

  test "the blank email is invalid" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "the email must not have length greater than 255" do
    @user.email = "e@mail.com"*26
    assert_not @user.valid?
  end

  test "the wrong format emails are invalid" do
    invalid_emails = ["abc-@mail.com", "abc.def@mail#archive.com",
                      "abc.def@mail.c", "abc.def@mail", "abc.def@mail..com"]

    invalid_emails.each do |invalid_email|
      @user.email = invalid_email
      assert_not @user.valid?, "#{@user.email}"
    end
  end

  test "the correct format emails are valid" do
    valid_emails = ["abc@mail.com", "abc-d@mail.com", "abc.def@mail.com",
                    "abc_def@mail.com", "abc.def@mail.cc", "abc.def@mail-archive.com",
                    "abc.def@mail.org", "abc.def@mail.com"]
    
    valid_emails.each do |valid_email|
      @user.email = valid_email
      assert @user.valid?, "#{@user.email}"
    end
  end

  test "the email must be unique" do
    duplicate_user = @user.dup
    @user.save

    assert_not duplicate_user.valid?
  end

  test "the password must have a minimum length" do
    CREATED_PASSWORD = "p"*5
    @user.password = CREATED_PASSWORD
    @user.password_confirmation = CREATED_PASSWORD
    assert_not @user.valid?
  end

end
