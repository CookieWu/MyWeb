require "spec_helper"
require 'Skill'

describe Skill do
  before(:all) do
    @skill = Skill.new
  end

	# it "create new skill" do
	# 	# skill = Skill.new
	# 	@skill.name = :should == "qq"
	# end
  # it "create skill" do
  #   let(:skill) { Skill.create }
  #   subject { skill }
  # end
  # it "skill name" do
  #   skill.name {:should == "qq"}
  # end

  # it "skill status" do
  #   skill = Skill.new
  #   @skill.status = :should == "oh"
  # end

  # let(:skill) { Skill.new }
  # subject { skill }

  it "skill name should good" do
    # skill.name { :should == "qq111" }
    @skill.name = :expect == "qq"
  end

  it "skill name" do
    # skill.status { :should == "oh!" }
    @skill.status = :should == "oh"
  end
end


# describe 'DELETE #destroy' do
#     it "deletes the user" do
#       skill = Skill.new
#       delete :destroy, {:id => skill.id}
#       # expect{delete :destroy, id: comment.id, post_id: @post}.
#       response.should redirect_to(skills_url)
#     end
# end