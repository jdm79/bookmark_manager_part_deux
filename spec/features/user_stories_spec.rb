feature "bookmark list" do
  scenario "can view a list of bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content("http://www.bbc.com")
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.makers.tech")
  end
end