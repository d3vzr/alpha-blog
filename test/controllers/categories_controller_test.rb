require 'test_helper'
class CategoriesControllerTest < ActionController::TestCase

  def setup
    @category = Category.create(name: "sports")
  end

  test "should get categores index" do
    get :index
    assert_response :success

  end

  test "should get new" do

    get :new
    assert_response :success

  end

  test "shoud get show" do
    get( :show, {'id' =>@category.id})
    assert_response :success
  end

end