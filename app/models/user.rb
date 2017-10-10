class User < ApplicationRecord::Base
  has_many : cities
  has_many : comments
  has_many : articles
end
