feature "bookmark list" do
  scenario "returns bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.facebook.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.instagram.com');")

    visit '/bookmarks'

    expect(page).to have_content "www.facebook.com"
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.instagram.com"
  end
end

# feature "add to bookmarks" do
#   scenario "returns bookmarks" do
#     connection = PG.connect(dbname: 'bookmark_manager_test')

#     visit '/add_bookmark'
#     fill_in :url_box, with: "www.bloomberg.com"
#     click_on 'Submit'
#     expect(page).to have_content "www.bloomberg.com"

#   end
# end

feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
