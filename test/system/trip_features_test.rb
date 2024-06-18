require "application_system_test_case"

class TripFeaturesTest < ApplicationSystemTestCase
  setup do
    @trip_feature = trip_features(:one)
  end

  test "visiting the index" do
    visit trip_features_url
    assert_selector "h1", text: "Trip features"
  end

  test "should create trip feature" do
    visit trip_features_url
    click_on "New trip feature"

    fill_in "Description", with: @trip_feature.description
    fill_in "Kind", with: @trip_feature.kind
    fill_in "Slug", with: @trip_feature.slug
    fill_in "Trip", with: @trip_feature.trip_id
    click_on "Create Trip feature"

    assert_text "Trip feature was successfully created"
    click_on "Back"
  end

  test "should update Trip feature" do
    visit trip_feature_url(@trip_feature)
    click_on "Edit this trip feature", match: :first

    fill_in "Description", with: @trip_feature.description
    fill_in "Kind", with: @trip_feature.kind
    fill_in "Slug", with: @trip_feature.slug
    fill_in "Trip", with: @trip_feature.trip_id
    click_on "Update Trip feature"

    assert_text "Trip feature was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip feature" do
    visit trip_feature_url(@trip_feature)
    click_on "Destroy this trip feature", match: :first

    assert_text "Trip feature was successfully destroyed"
  end
end
