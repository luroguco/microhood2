require 'spec_helper'

describe "ideas/show.html.erb" do
  before(:each) do
    @idea = assign(:idea, stub_model(Idea,
      :description => "MyText",
      :rating => 1,
      :neighborhood => "Neighborhood"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Neighborhood/)
  end
end
