require 'spec_helper'

describe "microhoods/new.html.erb" do
  before(:each) do
    assign(:microhood, stub_model(Microhood,
      :neighborhood => "MyString",
      :ward => 1,
      :precinct => 1
    ).as_new_record)
  end

  it "renders new microhood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => microhoods_path, :method => "post" do
      assert_select "input#microhood_neighborhood", :name => "microhood[neighborhood]"
      assert_select "input#microhood_ward", :name => "microhood[ward]"
      assert_select "input#microhood_precinct", :name => "microhood[precinct]"
    end
  end
end
