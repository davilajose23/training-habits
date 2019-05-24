require 'test_helper'

class ActivityRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_record = activity_records(:one)
  end

  test "should get index" do
    get activity_records_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_record_url
    assert_response :success
  end

  test "should create activity_record" do
    assert_difference('ActivityRecord.count') do
      post activity_records_url, params: { activity_record: { activity_type_id: @activity_record.activity_type_id, date: @activity_record.date, description: @activity_record.description, quantity: @activity_record.quantity, user_id: @activity_record.user_id } }
    end

    assert_redirected_to activity_record_url(ActivityRecord.last)
  end

  test "should show activity_record" do
    get activity_record_url(@activity_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_record_url(@activity_record)
    assert_response :success
  end

  test "should update activity_record" do
    patch activity_record_url(@activity_record), params: { activity_record: { activity_type_id: @activity_record.activity_type_id, date: @activity_record.date, description: @activity_record.description, quantity: @activity_record.quantity, user_id: @activity_record.user_id } }
    assert_redirected_to activity_record_url(@activity_record)
  end

  test "should destroy activity_record" do
    assert_difference('ActivityRecord.count', -1) do
      delete activity_record_url(@activity_record)
    end

    assert_redirected_to activity_records_url
  end
end
