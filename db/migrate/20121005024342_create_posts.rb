class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :title
      t.integer :image_id
      t.text :summary
      t.text :content
      t.datetime :published_at
      t.boolean :draft
      t.string :protected_question
      t.string :protected_answer

      t.timestamps
    end
  end
end
