require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of products' do
      get products_path

      assert_response :success
  end 

  test 'render a detail product page' do
    get product_path(products(:ps4)) 

    assert_response :success
    assert_select 'title', 'ps4'
    assert_select 'description', 'perfecto estado'
    assert_select 'price', 400
  end
end