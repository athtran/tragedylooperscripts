class Comment < ActiveRecord::Base
  belongs_to :script
  belongs_to :user
end
