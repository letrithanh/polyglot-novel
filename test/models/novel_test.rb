require "test_helper"

class NovelTest < ActiveSupport::TestCase
  
  def setup
    @novel = Novel.new(name: "title", description: "description")
  end

  def teardown
    @novel = nil
  end

  test "a blank name is invalid" do
    @novel.name = "     "
    assert_not @novel.valid?
  end

  test "a blank description is invalid" do
    @novel.description = "     "
    assert_not @novel.valid?
  end

end
