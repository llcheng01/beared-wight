require 'spec_helper'

describe Post do
    describe 'validations' do
        subject(:post) { Post.new }     # sets the subject of this describe {
        before { post.valid? }

        [:title, :body].each do |attribute|
            it "should validdate presence of #{attribute}" do
                expect(post.errors.size).to be >=1
                expect(post.errors.messages[:title]).to include "can't be blank"
            end
        end
    end
end
