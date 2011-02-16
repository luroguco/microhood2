require 'spec_helper'

describe "ideas/new.html.erb" do
  before(:each) do
    assign(:idea, stub_model(Idea,
      :description => "MyText",
      :rating => 1,
      :neighborhood => "MyString"
    ).as_new_record)
  end

  it "renders new idea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ideas_path, :method => "post" do
      assert_select "textarea#idea_description", :name => "idea[description]"
      assert_select "input#idea_rating", :name => "idea[rating]"
      assert_select "input#idea_neighborhood", :name => "idea[neighborhood]"
    end
  end
end
