require 'spec_helper'

describe "comments/show.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :content => "Content",
      :user_id => "User"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
  end
end
