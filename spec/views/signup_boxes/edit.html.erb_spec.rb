require 'spec_helper'

describe "signup_boxes/edit" do
  before(:each) do
    @signup_box = assign(:signup_box, stub_model(SignupBox,
      :name => "MyString",
      :company => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit signup_box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => signup_boxes_path(@signup_box), :method => "post" do
      assert_select "input#signup_box_name", :name => "signup_box[name]"
      assert_select "input#signup_box_company", :name => "signup_box[company]"
      assert_select "input#signup_box_email", :name => "signup_box[email]"
    end
  end
end
