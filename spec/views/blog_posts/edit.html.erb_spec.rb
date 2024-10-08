require 'rails_helper'

RSpec.describe "blog_posts/edit", type: :view do
  let(:blog_post) {
    BlogPost.create!(
      title: "MyString",
      body: "MyString"
    )
  }

  before(:each) do
    assign(:blog_post, blog_post)
  end

  it "renders the edit blog_post form" do
    render

    assert_select "form[action=?][method=?]", blog_post_path(blog_post), "post" do

      assert_select "input[name=?]", "blog_post[title]"

      assert_select "input[name=?]", "blog_post[body]"
    end
  end
end
