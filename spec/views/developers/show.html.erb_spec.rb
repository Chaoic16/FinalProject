require 'spec_helper'

describe "developers/show.html.erb" do
  before(:each) do
    @developer = assign(:developer, stub_model(Developer,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
