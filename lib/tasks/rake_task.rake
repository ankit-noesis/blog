namespace :blog do
  desc "rails db:drop, db:create db:migrate"

  task :setup_db do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
  end

  task :seed_db do
    Rake::Task['db:seed'].invoke
  end
end