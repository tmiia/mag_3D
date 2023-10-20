require "application_system_test_case"

class CommentariesTest < ApplicationSystemTestCase
  setup do
    @commentary = commentaries(:one)
  end

  test "visiting the index" do
    visit commentaries_url
    assert_selector "h1", text: "Commentaries"
  end

  test "should create commentary" do
    visit commentaries_url
    click_on "New commentary"

    fill_in "Comment", with: @commentary.comment
    check "Is masked" if @commentary.is_masked
    check "Is reported" if @commentary.is_reported
    click_on "Create Commentary"

    assert_text "Commentary was successfully created"
    click_on "Back"
  end

  test "should update Commentary" do
    visit commentary_url(@commentary)
    click_on "Edit this commentary", match: :first

    fill_in "Comment", with: @commentary.comment
    check "Is masked" if @commentary.is_masked
    check "Is reported" if @commentary.is_reported
    click_on "Update Commentary"

    assert_text "Commentary was successfully updated"
    click_on "Back"
  end

  test "should destroy Commentary" do
    visit commentary_url(@commentary)
    click_on "Destroy this commentary", match: :first

    assert_text "Commentary was successfully destroyed"
  end
end
