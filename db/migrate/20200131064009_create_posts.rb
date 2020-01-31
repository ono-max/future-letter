class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :select
      t.string :image
      t.string :email
      t.integer :date
      t.timestamps
    end
  end
end