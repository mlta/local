class Comment < ApplicationRecord ::Base
  belongs_to : cities
  belongs_to : users
end
