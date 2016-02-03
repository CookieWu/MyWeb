class Skill < ActiveRecord::Base

	translates :category_name

	validates :name, presence: true
end
