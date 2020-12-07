require "application_system_test_case"

class FlashcardsTest < ApplicationSystemTestCase
  setup do
    @flashcard = flashcards(:one)
  end

  test "visiting the index" do
    visit flashcards_url
    assert_selector "h1", text: "Flashcards"
  end

  test "creating a Flashcard" do
    visit flashcards_url
    click_on "New Flashcard"

    fill_in "Description", with: @flashcard.description
    fill_in "Title", with: @flashcard.title
    click_on "Create Flashcard"

    assert_text "Flashcard was successfully created"
    click_on "Back"
  end

  test "updating a Flashcard" do
    visit flashcards_url
    click_on "Edit", match: :first

    fill_in "Description", with: @flashcard.description
    fill_in "Title", with: @flashcard.title
    click_on "Update Flashcard"

    assert_text "Flashcard was successfully updated"
    click_on "Back"
  end

  test "destroying a Flashcard" do
    visit flashcards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flashcard was successfully destroyed"
  end
end
