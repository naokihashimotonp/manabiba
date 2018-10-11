class User < ActiveRecord::Base
  # 1userは複数のいいねを持ちうる。
  has_many :likes, dependent: :destroy
end
