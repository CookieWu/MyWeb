class MypageController < ApplicationController

	before_action :set_locale

	def index
		@personaldata = PersonalDatum.find_by category: "name"

		@educations = Education.where(category: "education").order(id: :desc)

		@jobs_cathay = Project.where(category: "cathay")
		@jobs_iii = Project.where(category: "iii")

		@study = CommonTitle.find_by category: "study"
		@job_title = CommonTitle.find_by category: "job_title"

		@months = Month.all

		@frontend = Skill.where(category: "Frontend")
		@backend = Skill.where(category: "Backend")
		@server = Skill.where(category: "Server")
		@version = Skill.where(category: "Version")

		# FB相關
		@fb_link = "https://www.facebook.com/app_scoped_user_id/779390195413136/"
        @fb_image = "https://scontent-tpe1-1.xx.fbcdn.net/hphotos-xpt1/v/t1.0-9/12047135_1094250857260400_1645784282011672846_n.jpghttps://scontent.xx.fbcdn.net/hprofile-xpt1/v/t1.0-1/p200x200/12047135_1094250857260400_1645784282011672846_n.jpg?oh=ca83cb4aa3a7ec5e2227b1b734b84bc3&oe=56DB1DF9"
		
	end

	private

		def set_locale
			if params[:locale]
				I18n.locale = params[:locale]
			end
		end
end
