class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.string :title
      t.string :author
      t.text :body
      t.timestamps
    end
    add_index :posts, :author
  end
end
