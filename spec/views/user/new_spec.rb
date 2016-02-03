require 'rails_helper'

RSpec.describe "users/new", type: :view do

	it "should render something" do
		@user = User.new
		render
		expect(rendered).to include("Please Enter Your Email:")
		expect(rendered).to include("請輸入email.")
	end
end
