require 'spec_helper'

describe "games/index.html.erb" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :title => "Title",
        :developer_id => "Developer",
        :publisher_id => "Publisher",
        :platform_id => "Platform"
      ),
      stub_model(Game,
        :title => "Title",
        :developer_id => "Developer",
        :publisher_id => "Publisher",
        :platform_id => "Platform"
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Developer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Platform".to_s, :count => 2
  end
end
