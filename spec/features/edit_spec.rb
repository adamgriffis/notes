require 'rails_helper'

feature 'As a user, I can edit notes' do
  before :each do
    @note = Note.create(title: 'This is a title',
                       description: 'this is a description'
                       )
  end

  scenario 'from the index page' do
    visit root_path

    expect(page).to have_content(:link_or_button, 'Edit')
  end

  scenario 'from the show page' do
    visit note_path(@note)

    expect(page).to have_content(:link_or_button, 'Edit')
  end

  scenario 'I can edit all fields' do
    visit edit_note_path(@note)

    expect(page).to have_content('edit note')
    expect(page).to have_content(@note.description)
  end

  scenario 'I can save a valid note' do
    title = "Something new"
    description = "New stuff"

    visit edit_note_path(@note)

    fill_in 'Title', with: title
    fill_in 'Description', with: description
    click_on 'Save Note'

    expect(page).to have_content(:link_or_button, 'Edit')
    expect(page).to have_content(title)
    expect(page).to have_content(description)

    expect(page).not_to have_content('This is a title')
    expect(page).not_to have_content('this is a description')
  end

  scenario 'invalid titles cannot be saved' do
    title = ""
    description = "New stuff"

    visit edit_note_path(@note)

    fill_in 'Title', with: title
    fill_in 'Description', with: description
    click_on 'Save Note'

    expect(page).to have_content('edit note')
    expect(page).to have_content("Title can't be blank")
  end
end
