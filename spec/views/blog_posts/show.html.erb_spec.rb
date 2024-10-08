require 'rails_helper'

RSpec.describe "blog_posts/show", type: :view do
  before(:each) do
    assign(:blog_post, BlogPost.create!(
      title: "Title",
      body: "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Body/)
  end
end
