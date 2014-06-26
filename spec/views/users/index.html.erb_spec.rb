require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :user_name => "User Name",
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :location => "Location"
      ),
      stub_model(User,
        :user_name => "User Name",
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :location => "Location"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
