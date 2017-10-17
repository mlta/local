class AddWeatherToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :weather, :string
  end
end
