require 'spec_helper'

describe "platforms/edit.html.erb" do
  before(:each) do
    @platform = assign(:platform, stub_model(Platform,
      :name => "MyString",
      :company => "MyString"
    ))
  end

  it "renders the edit platform form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => platforms_path(@platform), :method => "post" do
      assert_select "input#platform_name", :name => "platform[name]"
      assert_select "input#platform_company", :name => "platform[company]"
    end
  end
end
