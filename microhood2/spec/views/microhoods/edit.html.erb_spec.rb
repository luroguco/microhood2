require 'spec_helper'

describe "microhoods/edit.html.erb" do
  before(:each) do
    @microhood = assign(:microhood, stub_model(Microhood,
      :neighborhood => "MyString",
      :ward => 1,
      :precinct => 1
    ))
  end

  it "renders the edit microhood form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => microhood_path(@microhood), :method => "post" do
      assert_select "input#microhood_neighborhood", :name => "microhood[neighborhood]"
      assert_select "input#microhood_ward", :name => "microhood[ward]"
      assert_select "input#microhood_precinct", :name => "microhood[precinct]"
    end
  end
end
