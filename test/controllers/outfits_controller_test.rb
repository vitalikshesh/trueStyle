require 'test_helper'

class OutfitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outfit = outfits(:one)
      @update = {
        title: 'Lorem Ipsum',
        description: 'Wibbles are fun!',
        image_url: 'lorem.jpg',
        price: 19.95
      }
  end

  test "should get index" do
    get outfits_url
    assert_response :success
  end

  test "should get new" do
    get new_outfit_url
    assert_response :success
  end

  test "should create outfit" do
    assert_difference('Outfit.count') do
      #post outfits_url, params: { outfit: { description: @outfit.description, image_url: @outfit.image_url, price: @outfit.price, title: @outfit.title } }
      post :create, outfit: @update
    end

    assert_redirected_to outfit_url(Outfit.last)
  end

  test "should show outfit" do
    get outfit_url(@outfit)
    assert_response :success
  end

  test "should get edit" do
    get edit_outfit_url(@outfit)
    assert_response :success
  end

  test "should update outfit" do
    patch :update, id: @outfit, outfit: @update
    #patch outfit_url(@outfit), params: { outfit: { description: @outfit.description, image_url: @outfit.image_url, price: @outfit.price, title: @outfit.title } }
    assert_redirected_to outfit_url(@outfit)
  end

  test "should destroy outfit" do
    assert_difference('Outfit.count', -1) do
      delete outfit_url(@outfit)
    end

    assert_redirected_to outfits_url
  end
end
