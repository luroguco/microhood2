require 'spec_helper'

describe "microhoods/show.html.erb" do
  before(:each) do
    @microhood = assign(:microhood, stub_model(Microhood,
      :neighborhood => "Neighborhood",
      :ward => 1,
      :precinct => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Neighborhood/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
