class CreateJoinTableCategoryPost < ActiveRecord::Migration
  def change
  	create_table :kebapress_categories_posts, id: false do |t|
  		t.references :post
  		t.references :category
		end
  end
end
