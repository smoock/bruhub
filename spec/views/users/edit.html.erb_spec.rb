require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :user_name => "MyString",
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_user_name[name=?]", "user[user_name]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_first_name[name=?]", "user[first_name]"
      assert_select "input#user_last_name[name=?]", "user[last_name]"
      assert_select "input#user_location[name=?]", "user[location]"
    end
  end
end
