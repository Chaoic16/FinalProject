require 'spec_helper'

describe "platforms/index.html.erb" do
  before(:each) do
    assign(:platforms, [
      stub_model(Platform,
        :name => "Name",
        :company => "Company"
      ),
      stub_model(Platform,
        :name => "Name",
        :company => "Company"
      )
    ])
  end

  it "renders a list of platforms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
  end
end
