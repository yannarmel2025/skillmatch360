require "test_helper"

class SkillReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get skill_reports_index_url
    assert_response :success
  end

  test "should get show" do
    get skill_reports_show_url
    assert_response :success
  end

  test "should get new" do
    get skill_reports_new_url
    assert_response :success
  end

  test "should get create" do
    get skill_reports_create_url
    assert_response :success
  end

  test "should get edit" do
    get skill_reports_edit_url
    assert_response :success
  end

  test "should get update" do
    get skill_reports_update_url
    assert_response :success
  end

  test "should get destroy" do
    get skill_reports_destroy_url
    assert_response :success
  end
end
