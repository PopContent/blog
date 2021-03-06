require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :content => "MyText",
      :title => "MyString",
      :author => "MyString",
      :image => "MyString"
    ))
  end

  xit "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "input#post_author[name=?]", "post[author]"

      assert_select "input#post_image[name=?]", "post[image]"
    end
  end
end
