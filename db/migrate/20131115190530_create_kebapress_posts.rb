class CreateKebapressPosts < ActiveRecord::Migration
  def change
    create_table :kebapress_posts do |t|
      t.string :title
      t.text :body
      t.datetime :published_at
      t.datetime :published
      t.boolean :commentable
      t.integer :author_id
      t.belongs_to :category

      t.timestamps
    end
  end
end
