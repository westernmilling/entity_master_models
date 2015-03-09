require 'bundler/gem_tasks'
require 'active_record'
require_relative 'spec/support/active_record'

task :environment do
  ActiveRecord::Base.configurations = DatabaseTasks.database_configuration
  ActiveRecord::Base.establish_connection DatabaseTasks.env.to_sym
end

load 'active_record/railties/databases.rake'

Dir.glob('lib/tasks/*.rake').each { |r| import r }
