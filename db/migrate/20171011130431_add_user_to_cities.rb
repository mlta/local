class AddUserToCities < ActiveRecord::Migration[5.1]
  def change
    add_reference :cities, :user, index: true
  end
end
