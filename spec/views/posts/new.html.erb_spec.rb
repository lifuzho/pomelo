require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :category_id => 1,
      :title => "MyString",
      :image_id => 1,
      :summary => "MyText",
      :content => "MyText",
      :draft => false,
      :protected_question => "MyString",
      :protected_answer => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_category_id", :name => "post[category_id]"
      assert_select "input#post_title", :name => "post[title]"
      assert_select "input#post_image_id", :name => "post[image_id]"
      assert_select "textarea#post_summary", :name => "post[summary]"
      assert_select "textarea#post_content", :name => "post[content]"
      assert_select "input#post_draft", :name => "post[draft]"
      assert_select "input#post_protected_question", :name => "post[protected_question]"
      assert_select "input#post_protected_answer", :name => "post[protected_answer]"
    end
  end
end
