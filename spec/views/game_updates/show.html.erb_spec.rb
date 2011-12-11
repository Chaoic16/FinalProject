require 'spec_helper'

describe "game_updates/show.html.erb" do
  before(:each) do
    @game_update = assign(:game_update, stub_model(GameUpdate,
      :nameG => "Name G",
      :developerG => "Developer G",
      :publisherG => "Publisher G",
      :platformG => "Platform G"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name G/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Developer G/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Publisher G/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Platform G/)
  end
end
