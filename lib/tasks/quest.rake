
task :quest do
  Rails.env = "development"
  Rake::Task["db:drop"].invoke
  Rake::Task["db:create"].invoke
  Rake::Task["db:migrate"].invoke
  Rake::Task["db:seed"].invoke
  require 'my_awesome_class.rb'
  Myawesomeclass.new
end


# Join uses Lazy loading -
# Includes uses Eager loading - loads both tables in memory reduce db queries.
# Each