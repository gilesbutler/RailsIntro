namespace :db do

  task :initialize => :environment do
    puts Movie.column_names
  end

  desc "Recreate database"
  task :recreate => %w(db:drop db:create db:migrate db:seed)
end