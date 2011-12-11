require 'spec_helper'

describe "game_updates/index.html.erb" do
  before(:each) do
    assign(:game_updates, [
      stub_model(GameUpdate,
        :nameG => "Name G",
        :developerG => "Developer G",
        :publisherG => "Publisher G",
        :platformG => "Platform G"
      ),
      stub_model(GameUpdate,
        :nameG => "Name G",
        :developerG => "Developer G",
        :publisherG => "Publisher G",
        :platformG => "Platform G"
      )
    ])
  end

  it "renders a list of game_updates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name G".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Developer G".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Publisher G".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Platform G".to_s, :count => 2
  end
end
