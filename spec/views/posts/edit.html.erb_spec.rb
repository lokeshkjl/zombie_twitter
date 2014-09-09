require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :description => "MyString",
      :numberOfPeople => 1,
      :state => 1,
      :user_id => 1,
      :location_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_description[name=?]", "post[description]"
      assert_select "input#post_numberOfPeople[name=?]", "post[numberOfPeople]"
      assert_select "input#post_state[name=?]", "post[state]"
      assert_select "input#post_user_id[name=?]", "post[user_id]"
      assert_select "input#post_location_id[name=?]", "post[location_id]"
    end
  end
end
