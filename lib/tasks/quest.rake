task :ultimatequest do
  Rails.env = "development"
  Rake::Task["db:drop"].invoke
  Rake::Task["db:create"].invoke
  Rake::Task["db:migrate"].invoke
  Rake::Task["db:seed"].invoke
  require 'my_awesome_class.rb'
  Myawesomeclass.new
end

# Comments

# Join uses Lazy loading - Fetch only when needed. By utlitizing associated table but only loading the room table into memory as the associated bookings table is not required. Therefore we are not loading redundant data.
# Includes uses Eager loading - loads both tables in memory reduce db queries. Fetch all at once.
# Each - iterates through every item in the array of results. Most inefficient.

# Sources

# http://guides.rubyonrails.org/active_record_querying.html
# http://blog.skylight.io/4-easy-ways-to-speed-up-your-rails-app/?utm_source=rubyweekly&utm_medium=email
# http://edgeguides.rubyonrails.org/active_record_querying.html
# http://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html