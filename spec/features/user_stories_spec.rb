feature "bookmark list" do
  scenario "can view a list of bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content("www.facebook.com")
    expect(page).to have_content("www.google.com")
    expect(page).to have_content("www.instagram.com")
  end
end
