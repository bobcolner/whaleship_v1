require 'spec_helper'

describe "signup_boxes/show" do
  before(:each) do
    @signup_box = assign(:signup_box, stub_model(SignupBox,
      :name => "Name",
      :company => "Company",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Company/)
    rendered.should match(/Email/)
  end
end
