require 'rails/generators/active_record'

# EntityModels
module EntityModels
  # Generators
  module Generators
    # InstallGenerator
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      desc 'Creates entity models and migrations.'

      class << self
        def next_migration_number(dirname)
          ActiveRecord::Generators::Base.next_migration_number(dirname)
        end

        def source_root
          File.expand_path('../templates', __FILE__)
        end
      end

      def create_migrations
        copy_migration_template 'create_entities.rb'
        copy_migration_template 'create_locations.rb'
        copy_migration_template 'create_contacts.rb'
        copy_migration_template 'create_salespeople.rb'
        copy_migration_template 'create_customers.rb'
        copy_migration_template 'create_vendors.rb'
      end

      protected

      def copy_migration_template(name)
        migration_template "migrations/#{name}", "db/migrate/#{name}"
      end
    end
  end
end
