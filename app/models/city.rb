class City < ApplicationRecord
  has_many :comments
  has_many :articles
  # belongs_to :user
end
