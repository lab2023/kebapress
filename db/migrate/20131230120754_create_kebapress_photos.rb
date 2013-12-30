class CreateKebapressPhotos < ActiveRecord::Migration
  def change
    create_table :kebapress_photos do |t|
      t.attachment :image

      t.timestamps
    end
  end
end
