class Like < ActiveRecord::Base
  belongs_to :closet
  belongs_to :user
end
