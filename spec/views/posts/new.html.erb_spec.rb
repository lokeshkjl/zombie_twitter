require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :description => "MyString",
      :numberOfPeople => 1,
      :state => 1,
      :user_id => 1,
      :location_id => 1
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_description[name=?]", "post[description]"
      assert_select "input#post_numberOfPeople[name=?]", "post[numberOfPeople]"
      assert_select "input#post_state[name=?]", "post[state]"
      assert_select "input#post_user_id[name=?]", "post[user_id]"
      assert_select "input#post_location_id[name=?]", "post[location_id]"
    end
  end
end
