require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test '.01 should get index' do
    get categories_path
    assert_response :success
  end

  test '.01 should get new' do
    get categories_path
    assert_response :success
  end
  
end
