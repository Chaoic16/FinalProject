require 'spec_helper'

describe "developers/new.html.erb" do
  before(:each) do
    assign(:developer, stub_model(Developer,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new developer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => developers_path, :method => "post" do
      assert_select "input#developer_name", :name => "developer[name]"
    end
  end
end
