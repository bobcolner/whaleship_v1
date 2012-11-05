require 'spec_helper'

describe "signup_boxes/index" do
  before(:each) do
    assign(:signup_boxes, [
      stub_model(SignupBox,
        :name => "Name",
        :company => "Company",
        :email => "Email"
      ),
      stub_model(SignupBox,
        :name => "Name",
        :company => "Company",
        :email => "Email"
      )
    ])
  end

  it "renders a list of signup_boxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
