require 'test_helper'

class HandsControllerTest < ActionController::TestCase
  setup do
    @hand = hands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hand" do
    assert_difference('Hand.count') do
      post :create, hand: { dora: @hand.dora, p1_change: @hand.p1_change, p1_is_yakuman: @hand.p1_is_yakuman, p1_yaku: @hand.p1_yaku, p2_change: @hand.p2_change, p2_is_yakuman: @hand.p2_is_yakuman, p2_yaku: @hand.p2_yaku, p3_change: @hand.p3_change, p3_is_yakuman: @hand.p3_is_yakuman, p3_yaku: @hand.p3_yaku, p4_change: @hand.p4_change, p4_is_yakuman: @hand.p4_is_yakuman, p4_yaku: @hand.p4_yaku, round_name: @hand.round_name }
    end

    assert_redirected_to hand_path(assigns(:hand))
  end

  test "should show hand" do
    get :show, id: @hand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hand
    assert_response :success
  end

  test "should update hand" do
    patch :update, id: @hand, hand: { dora: @hand.dora, p1_change: @hand.p1_change, p1_is_yakuman: @hand.p1_is_yakuman, p1_yaku: @hand.p1_yaku, p2_change: @hand.p2_change, p2_is_yakuman: @hand.p2_is_yakuman, p2_yaku: @hand.p2_yaku, p3_change: @hand.p3_change, p3_is_yakuman: @hand.p3_is_yakuman, p3_yaku: @hand.p3_yaku, p4_change: @hand.p4_change, p4_is_yakuman: @hand.p4_is_yakuman, p4_yaku: @hand.p4_yaku, round_name: @hand.round_name }
    assert_redirected_to hand_path(assigns(:hand))
  end

  test "should destroy hand" do
    assert_difference('Hand.count', -1) do
      delete :destroy, id: @hand
    end

    assert_redirected_to hands_path
  end
end
