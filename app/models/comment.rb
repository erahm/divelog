class Comment < ActiveRecord::Base
  belongs_to :dive
  belongs_to :user
end
