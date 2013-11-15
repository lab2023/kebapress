class CreateKebapressTags < ActiveRecord::Migration
  def change
    create_table :kebapress_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
