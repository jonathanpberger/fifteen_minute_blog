require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  it "should validate presence of title" do
    blog_post = BlogPost.new(title: "", body: "Hello, world!")
    expect(blog_post).not_to be_valid
    expect(blog_post.errors[:title]).to include("can't be blank")
  end
end
