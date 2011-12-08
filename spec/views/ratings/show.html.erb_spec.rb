require 'spec_helper'

describe "ratings/show.html.erb" do
  before(:each) do
    @rating = assign(:rating, stub_model(Rating,
      :value => 1,
      :user_id => "User",
      :game_id => "Game"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/User/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Game/)
  end
end
