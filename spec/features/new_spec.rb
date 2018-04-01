require 'rails_helper'

feature 'As a user when I visit new_note_path', js: true do
  it 'I should see a form to create a new note' do
    visit new_note_path

    expect(page).to have_content('CREATE A NEW NOTE')
    expect(page).to have_content('TITLE')
    expect(page).to have_content('DESCRIPTION')
  end
end
