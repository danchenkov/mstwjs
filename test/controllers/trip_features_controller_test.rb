require "test_helper"

class TripFeaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_feature = trip_features(:one)
  end

  test "should get index" do
    get trip_features_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_feature_url
    assert_response :success
  end

  test "should create trip_feature" do
    assert_difference("TripFeature.count") do
      post trip_features_url, params: { trip_feature: { description: @trip_feature.description, kind: @trip_feature.kind, slug: @trip_feature.slug, trip_id: @trip_feature.trip_id } }
    end

    assert_redirected_to trip_feature_url(TripFeature.last)
  end

  test "should show trip_feature" do
    get trip_feature_url(@trip_feature)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_feature_url(@trip_feature)
    assert_response :success
  end

  test "should update trip_feature" do
    patch trip_feature_url(@trip_feature), params: { trip_feature: { description: @trip_feature.description, kind: @trip_feature.kind, slug: @trip_feature.slug, trip_id: @trip_feature.trip_id } }
    assert_redirected_to trip_feature_url(@trip_feature)
  end

  test "should destroy trip_feature" do
    assert_difference("TripFeature.count", -1) do
      delete trip_feature_url(@trip_feature)
    end

    assert_redirected_to trip_features_url
  end
end
