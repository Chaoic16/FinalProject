require 'spec_helper'

describe "game_updates/new.html.erb" do
  before(:each) do
    assign(:game_update, stub_model(GameUpdate,
      :nameG => "MyString",
      :developerG => "MyString",
      :publisherG => "MyString",
      :platformG => "MyString"
    ).as_new_record)
  end

  it "renders new game_update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => game_updates_path, :method => "post" do
      assert_select "input#game_update_nameG", :name => "game_update[nameG]"
      assert_select "input#game_update_developerG", :name => "game_update[developerG]"
      assert_select "input#game_update_publisherG", :name => "game_update[publisherG]"
      assert_select "input#game_update_platformG", :name => "game_update[platformG]"
    end
  end
end
