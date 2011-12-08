require 'spec_helper'

describe "platforms/show.html.erb" do
  before(:each) do
    @platform = assign(:platform, stub_model(Platform,
      :name => "Name",
      :company => "Company"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company/)
  end
end
