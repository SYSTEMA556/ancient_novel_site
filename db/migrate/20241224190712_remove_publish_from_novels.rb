class RemovePublishFromNovels < ActiveRecord::Migration[7.0]
  def change
    remove_column :novels, :publish, :boolean
  end
end
