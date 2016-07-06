class Assessment < ActiveRecord::Base
  belongs_to :user

  scope :byUser , -> (userid) {where user_id: userid}
end
