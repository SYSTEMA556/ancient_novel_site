class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :novel_id
      t.text :body
      t.string :reviewer_name
      t.boolean :deleted

      t.timestamps
    end
  end
end
