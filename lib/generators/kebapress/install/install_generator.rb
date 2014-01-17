require 'rails/generators'
require 'rails/generators/base'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module Kebapress
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)
      include Rails::Generators::Migration

      desc 'Copies Kebapress views, migrations and locales.'

      def copy_views
        directory 'views', 'app/views'
      end

      def self.next_migration_number(dirname)
        ActiveRecord::Generators::Base.next_migration_number(dirname)
      end

      def create_migration_file
        migration_template 'migrations/categories.rb', 'db/migrate/create_kebapress_categories.rb' rescue nil
        migration_template 'migrations/join_table_category_post.rb', 'db/migrate/create_join_table_category_post.rb' rescue nil
        migration_template 'migrations/join_table_post_tag.rb', 'db/migrate/create_join_table_post_tag.rb' rescue nil
        migration_template 'migrations/photos.rb', 'db/migrate/create_kebapress_photos.rb' rescue nil
        migration_template 'migrations/posts.rb', 'db/migrate/create_kebapress_posts.rb' rescue nil
        migration_template 'migrations/tags.rb', 'db/migrate/create_kebapress_tags.rb' rescue nil
      end

      def copy_locales
        directory 'locales', 'config/locales'
      end
    end
  end
end