require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:post) { Post.create9title: "New Post Title", body: "New Post Body")}

  describe "attributes" do
    it "has title and body attributes" do
      expect(post).to have_attibutes(title: "New Post Title", body: "New Post Body")
    end
  end
end
