class CreateKebapressPosts < ActiveRecord::Migration
  def change
    create_table :kebapress_posts do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.boolean :commentable
      t.boolean :published
      t.integer :author_id

      t.timestamps
    end
  end
end
