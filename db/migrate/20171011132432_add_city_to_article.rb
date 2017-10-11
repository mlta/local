class AddCityToArticle < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :city, index: true
  end
end
