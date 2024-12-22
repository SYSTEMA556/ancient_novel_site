class CreateNovels < ActiveRecord::Migration[7.0]
  def change
    create_table :novels do |t|
      t.string :title
      t.string :author
      t.date :publish
      t.string :password_digest
      t.text :novel_body
      t.integer :point
      t.string :novel_tags

      t.timestamps
    end
  end
end
