class Project < ActiveRecord::Base

	translates :company, :project_name, :project_description, :s_month, :e_month
end
