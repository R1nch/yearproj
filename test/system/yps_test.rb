require "application_system_test_case"

class YpsTest < ApplicationSystemTestCase
  setup do
    @yp = yps(:one)
  end

  test "visiting the index" do
    visit yps_url
    assert_selector "h1", text: "Yps"
  end

  test "creating a Yp" do
    visit yps_url
    click_on "New Yp"

    fill_in "Email", with: @yp.email
    fill_in "First name", with: @yp.first_name
    fill_in "Last name", with: @yp.last_name
    fill_in "Phone", with: @yp.phone
    fill_in "Socnet", with: @yp.socnet
    click_on "Create Yp"

    assert_text "Yp was successfully created"
    click_on "Back"
  end

  test "updating a Yp" do
    visit yps_url
    click_on "Edit", match: :first

    fill_in "Email", with: @yp.email
    fill_in "First name", with: @yp.first_name
    fill_in "Last name", with: @yp.last_name
    fill_in "Phone", with: @yp.phone
    fill_in "Socnet", with: @yp.socnet
    click_on "Update Yp"

    assert_text "Yp was successfully updated"
    click_on "Back"
  end

  test "destroying a Yp" do
    visit yps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yp was successfully destroyed"
  end
end
