require 'rails_helper'

RSpec.describe "blog_posts/index", type: :view do
  before(:each) do
    assign(:blog_posts, [
      BlogPost.create!(
        title: "Title",
        body: "Body"
      ),
      BlogPost.create!(
        title: "Title",
        body: "Body"
      )
    ])
  end

  it "renders a list of blog_posts" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Body".to_s), count: 2
  end
end
