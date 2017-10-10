class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :history
      t.string :neighborhood
      t.string :schools
      t.string :transportation
      t.string :job
      t.string :market
      t.string :sports
      t.string :recreation
      t.string :culture
      t.string :health
      t.string :currency
      t.string :consulate
      t.string :population
      t.string :cost_of_living

      t.timestamps
    end
  end
end
