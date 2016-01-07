namespace :db do
  desc "Rebuild system"
  # if (Rails.env == "development")
  task :reb => ["tmp:clear", "log:clear" , "db:drop", "db:create", "db:migrate", "db:seed","assets:clean", "assets:precompile"]
  # end
  task :on => ["tmp:clear", "assets:clean", "assets:precompile", "db:migrate"]
end