include ActiveRecord::Tasks

db_dir = File.expand_path('../../dummy/db', __FILE__)
config_dir = File.expand_path('../../dummy/config', __FILE__)

DatabaseTasks.env = ENV['ENV'] || 'test'
DatabaseTasks.db_dir = db_dir
DatabaseTasks.database_configuration =
  YAML.load(File.read(File.join(config_dir, 'database.yml')))
DatabaseTasks.migrations_paths = File.join(db_dir, 'migrate')
