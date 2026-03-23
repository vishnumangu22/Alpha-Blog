require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "category should be valid" do
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end
end
