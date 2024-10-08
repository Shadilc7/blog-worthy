class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :upvote, null: false, :default => 0
      t.integer :downvote, null: false, :default => 0
      t.boolean :is_blog_worthy, :default => false

      t.timestamps
    end
  end
end
