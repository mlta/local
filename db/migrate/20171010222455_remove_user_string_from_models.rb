class RemoveUserStringFromModels < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :user, :string
    remove_column :comments, :user, :string
  end
end
