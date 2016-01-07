namespace :db do
  desc "Rebuild system"

  # lib/tasks/kill_postgres_connections.rake
task :kill_postgres_connections => :environment do
  db_name = "#{File.basename(Rails.root)}_#{Rails.env}"
  sh = <<EOF
ps xa \
  | grep postgres: \
  | grep #{db_name} \
  | grep -v grep \
  | awk '{print $1}' \
  | xargs kill
EOF
  puts `#{sh}`
end

  # if (Rails.env == "development")
  task :reb => ["tmp:clear", "log:clear" ,:kill_postgres_connections, "db:drop", "db:create", "db:migrate", "db:seed","assets:clean", "assets:precompile"]
  # end
  task :on => ["tmp:clear", "assets:clean", "assets:precompile", "db:migrate"]
end