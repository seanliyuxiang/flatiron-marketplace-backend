class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :rating
      t.integer :item_id
      t.integer :reviewer_id
    end
  end
end
