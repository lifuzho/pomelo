require 'spec_helper'

describe "categories/show" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :name => "Name",
      :position => 1,
      :parent_id => 2,
      :protected_question => "Protected Question",
      :portected_answer => "Portected Answer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Protected Question/)
    rendered.should match(/Portected Answer/)
  end
end
