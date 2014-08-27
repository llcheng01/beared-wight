require 'spec_helper'


feature 'Reading the blog' do
    scenario 'Guests cannot create posts' do
        visit root_path
        click_link "New Post"

        expect(page).to have_content "Access denied"
    end
end
