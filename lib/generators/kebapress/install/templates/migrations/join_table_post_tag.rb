class CreateJoinTablePostTag < ActiveRecord::Migration
  def change
  	create_table :kebapress_posts_tags, id: false do |t|
  		t.references :post
  		t.references :tag
		end
  end
end
