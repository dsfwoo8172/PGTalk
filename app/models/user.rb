class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: { visitor: 0, client: 1 }

  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates :password, presence: true
  validates :role, inclusion: { in: roles.keys }
end
