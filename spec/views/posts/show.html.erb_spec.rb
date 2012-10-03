require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :category_id => 1,
      :title => "Title",
      :image_id => 2,
      :summary => "MyText",
      :content => "MyText",
      :draft => false,
      :protected_question => "Protected Question",
      :protected_answer => "Protected Answer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Protected Question/)
    rendered.should match(/Protected Answer/)
  end
end
