require "application_system_test_case"

class PollsTest < ApplicationSystemTestCase
  setup do
    @poll = polls(:one)
  end

  test "visiting the index" do
    visit polls_url
    assert_selector "h1", text: "Polls"
  end

  test "should create poll" do
    visit polls_url
    click_on "New poll"

    fill_in "Count 1", with: @poll.count_1
    fill_in "Count 2", with: @poll.count_2
    fill_in "Count 3", with: @poll.count_3
    fill_in "Label 1", with: @poll.label_1
    fill_in "Label 2", with: @poll.label_2
    fill_in "Label 3", with: @poll.label_3
    fill_in "Question", with: @poll.question
    click_on "Create Poll"

    assert_text "Poll was successfully created"
    click_on "Back"
  end

  test "should update Poll" do
    visit poll_url(@poll)
    click_on "Edit this poll", match: :first

    fill_in "Count 1", with: @poll.count_1
    fill_in "Count 2", with: @poll.count_2
    fill_in "Count 3", with: @poll.count_3
    fill_in "Label 1", with: @poll.label_1
    fill_in "Label 2", with: @poll.label_2
    fill_in "Label 3", with: @poll.label_3
    fill_in "Question", with: @poll.question
    click_on "Update Poll"

    assert_text "Poll was successfully updated"
    click_on "Back"
  end

  test "should destroy Poll" do
    visit poll_url(@poll)
    click_on "Destroy this poll", match: :first

    assert_text "Poll was successfully destroyed"
  end
end
