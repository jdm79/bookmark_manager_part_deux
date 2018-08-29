feature "bookmark list" do
  # scenario "can view a list of bookmarks" do
  #   visit '/bookmarks'
  #   expect(page).to have_content("www.facebook.com")
  #   expect(page).to have_content("www.google.com")
  #   expect(page).to have_content("www.instagram.com")

  scenario "returns bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.facebook.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.instagram.com');")

    visit '/bookmarks'

    save_and_open_page

    expect(page).to have_content "www.facebook.com"
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.instagram.com"
  end
end
