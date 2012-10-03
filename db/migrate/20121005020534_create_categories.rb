class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :position
      t.integer :parent_id
      t.string :protected_question
      t.string :portected_answer

      t.timestamps
    end
  end
end
