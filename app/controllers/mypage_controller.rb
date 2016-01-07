class MypageController < ApplicationController

	before_action :set_locale

	def index
		@personaldata = PersonalDatum.first
		@title = CommonTitle.first
		@months = Month.all
		
	end

	private

		def set_locale
			if params[:locale]
				I18n.locale = params[:locale]
			end
		end
end
