class User < ActiveRecord::Base
  has_many :assessments

  before_save {self.email = email.downcase}
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # The following statement serves to show only users with no admin access level.
  # This will be used by controllers
  #   source: http://www.justinweiss.com/articles/search-and-filter-rails-models-without-bloating-your-controller/
  #
  scope :admin, -> (admin) {where admin: false}
end
