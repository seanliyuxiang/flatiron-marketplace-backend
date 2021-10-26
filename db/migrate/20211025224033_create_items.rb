class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.float :price
      t.integer :owner_id
    end
  end
end