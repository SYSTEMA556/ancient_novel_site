require "application_system_test_case"

class NovelsTest < ApplicationSystemTestCase
  setup do
    @novel = novels(:one)
  end

  test "visiting the index" do
    visit novels_url
    assert_selector "h1", text: "Novels"
  end

  test "should create novel" do
    visit novels_url
    click_on "New novel"

    fill_in "", with: @novel.
    fill_in "Author", with: @novel.author
    fill_in "Novel body", with: @novel.novel_body
    fill_in "Novel tags", with: @novel.novel_tags
    fill_in "Password digest", with: @novel.password_digest
    fill_in "Point", with: @novel.point
    fill_in "Publish", with: @novel.publish
    fill_in "Title", with: @novel.title
    click_on "Create Novel"

    assert_text "Novel was successfully created"
    click_on "Back"
  end

  test "should update Novel" do
    visit novel_url(@novel)
    click_on "Edit this novel", match: :first

    fill_in "", with: @novel.
    fill_in "Author", with: @novel.author
    fill_in "Novel body", with: @novel.novel_body
    fill_in "Novel tags", with: @novel.novel_tags
    fill_in "Password digest", with: @novel.password_digest
    fill_in "Point", with: @novel.point
    fill_in "Publish", with: @novel.publish
    fill_in "Title", with: @novel.title
    click_on "Update Novel"

    assert_text "Novel was successfully updated"
    click_on "Back"
  end

  test "should destroy Novel" do
    visit novel_url(@novel)
    click_on "Destroy this novel", match: :first

    assert_text "Novel was successfully destroyed"
  end
end
