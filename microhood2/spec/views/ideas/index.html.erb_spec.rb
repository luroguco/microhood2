require 'spec_helper'

describe "ideas/index.html.erb" do
  before(:each) do
    assign(:ideas, [
      stub_model(Idea,
        :description => "MyText",
        :rating => 1,
        :neighborhood => "Neighborhood"
      ),
      stub_model(Idea,
        :description => "MyText",
        :rating => 1,
        :neighborhood => "Neighborhood"
      )
    ])
  end

  it "renders a list of ideas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
  end
end
