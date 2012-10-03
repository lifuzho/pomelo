require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :category_id => 1,
        :title => "Title",
        :image_id => 2,
        :summary => "MyText",
        :content => "MyText",
        :draft => false,
        :protected_question => "Protected Question",
        :protected_answer => "Protected Answer"
      ),
      stub_model(Post,
        :category_id => 1,
        :title => "Title",
        :image_id => 2,
        :summary => "MyText",
        :content => "MyText",
        :draft => false,
        :protected_question => "Protected Question",
        :protected_answer => "Protected Answer"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Protected Question".to_s, :count => 2
    assert_select "tr>td", :text => "Protected Answer".to_s, :count => 2
  end
end
