require 'spec_helper'

describe "games/new.html.erb" do
  before(:each) do
    assign(:game, stub_model(Game,
      :title => "MyString",
      :developer_id => "MyString",
      :publisher_id => "MyString",
      :platform_id => "MyString"
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_title", :name => "game[title]"
      assert_select "input#game_developer_id", :name => "game[developer_id]"
      assert_select "input#game_publisher_id", :name => "game[publisher_id]"
      assert_select "input#game_platform_id", :name => "game[platform_id]"
    end
  end
end
