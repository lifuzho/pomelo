require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :name => "Name",
        :position => 1,
        :parent_id => 2,
        :protected_question => "Protected Question",
        :portected_answer => "Portected Answer"
      ),
      stub_model(Category,
        :name => "Name",
        :position => 1,
        :parent_id => 2,
        :protected_question => "Protected Question",
        :portected_answer => "Portected Answer"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Protected Question".to_s, :count => 2
    assert_select "tr>td", :text => "Portected Answer".to_s, :count => 2
  end
end
