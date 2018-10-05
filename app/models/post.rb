class Post < ActiveRecord::Base
  has_many :comments
  is_impressionable
end
