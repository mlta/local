class Article < ApplicationRecord :: Base
  belongs_to : cities
  belongs_to : users
end
