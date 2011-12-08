require 'spec_helper'

describe "developers/edit.html.erb" do
  before(:each) do
    @developer = assign(:developer, stub_model(Developer,
      :name => "MyString"
    ))
  end

  it "renders the edit developer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => developers_path(@developer), :method => "post" do
      assert_select "input#developer_name", :name => "developer[name]"
    end
  end
end
