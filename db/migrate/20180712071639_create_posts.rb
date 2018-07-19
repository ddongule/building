class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :nickname
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
