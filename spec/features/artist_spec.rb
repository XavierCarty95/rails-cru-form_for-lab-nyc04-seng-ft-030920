require 'rails_helper'

describe 'navigate artist pages' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
  end



 
end

describe 'artist form' do
  it 'shows a new form that submits content and redirects and prints out params' do
    visit new_artist_path

    fill_in 'artist[name]', with: "My artist name"
    fill_in 'artist[bio]', with: "My artist bio"

    click_on "Create Artist"

    expect(page).to have_content("My artist name")
  end

 
end
