require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :name => "MyString",
      :position => 1,
      :parent_id => 1,
      :protected_question => "MyString",
      :portected_answer => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => categories_path(@category), :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
      assert_select "input#category_position", :name => "category[position]"
      assert_select "input#category_parent_id", :name => "category[parent_id]"
      assert_select "input#category_protected_question", :name => "category[protected_question]"
      assert_select "input#category_portected_answer", :name => "category[portected_answer]"
    end
  end
end
