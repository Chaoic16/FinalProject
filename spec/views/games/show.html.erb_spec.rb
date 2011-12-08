require 'spec_helper'

describe "games/show.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :title => "Title",
      :developer_id => "Developer",
      :publisher_id => "Publisher",
      :platform_id => "Platform"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Developer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Publisher/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Platform/)
  end
end
