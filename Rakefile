require "rake"

desc "Run all tests"
task :test => ["test:parsers","test:tutorials"]

namespace :test do
  task :helper do
    require_relative "./_test/helper"
  end

  task :parsers do
    Dir["_test/parsers/**/*.rb"].each do |file|
      load file
    end
  end

  task :tutorials do
    Dir["_test/tutorials/**/*.rb"].each do |file|
      load file
    end
  end
end
