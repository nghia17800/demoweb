class User < ApplicationRecord
  before_save {self.email = email.downcase}
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
