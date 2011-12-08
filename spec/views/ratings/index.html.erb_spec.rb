require 'spec_helper'

describe "ratings/index.html.erb" do
  before(:each) do
    assign(:ratings, [
      stub_model(Rating,
        :value => 1,
        :user_id => "User",
        :game_id => "Game"
      ),
      stub_model(Rating,
        :value => 1,
        :user_id => "User",
        :game_id => "Game"
      )
    ])
  end

  it "renders a list of ratings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Game".to_s, :count => 2
  end
end
