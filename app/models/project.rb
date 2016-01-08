class Project < ActiveRecord::Base

	translates :company, :project_name, :project_description
end
