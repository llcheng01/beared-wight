require 'spec_helper'

feature 'Posting Comments' do
   background do
       @post = Post.create(:title => 'Awesome Blog Post', :body => 'Lorem ipsum dolor sit amet')

   end 

   scenario 'Posting a comment' do
       visit post_path(@post)

       comment = 'This post is just fliller text. Ripped off!'
       fill_in 'comment_body', :with => comment
       click_button 'Add Comment'

       expect(page).to have_content comment
   end
end
