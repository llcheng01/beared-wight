require 'spec_helper'


feature 'Reading the blog' do
    scenario 'Guests cannot create posts' do
        visit root_path
        click_link "New Post"

        expect(page).to have_content "Access denied"
    end

    # scenario 'Publishing an existing blog' do
    #     visit admin_post_path(@post)
    #     click_link "Edit Post"

    #     check 'Published'
    #     click_button 'Update Post'

    #     expect(page).to have_content 'Post was successfully updated'
    #     expect(Post.last.published?).to be_true
    # end
end
