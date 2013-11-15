class CreateKebapressCategories < ActiveRecord::Migration
  def change
    create_table :kebapress_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
