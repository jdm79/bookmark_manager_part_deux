feature "bookmark list" do
  scenario "can view a list of bookmarks" do
    visit '/'
    expect(page).to have_content('Bookmark list:')
  end
end
