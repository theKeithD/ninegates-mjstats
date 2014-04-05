require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { date: @game.date, name: @game.name, p1_final_score: @game.p1_final_score, p1_id: @game.p1_id, p2_final_score: @game.p2_final_score, p2_id: @game.p2_id, p3_final_score: @game.p3_final_score, p3_id: @game.p3_id, p4_final_score: @game.p4_final_score, p4_id: @game.p4_id, rule_flags: @game.rule_flags }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { date: @game.date, name: @game.name, p1_final_score: @game.p1_final_score, p1_id: @game.p1_id, p2_final_score: @game.p2_final_score, p2_id: @game.p2_id, p3_final_score: @game.p3_final_score, p3_id: @game.p3_id, p4_final_score: @game.p4_final_score, p4_id: @game.p4_id, rule_flags: @game.rule_flags }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
