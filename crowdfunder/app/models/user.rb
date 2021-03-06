class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :pledges
  has_many :backed_projects, class_name: "Project", through: :pledges
  has_many :owned_projects, class_name: "Project", foreign_key: "owner_id"
  has_many :rewards, through: :pledges

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, uniqueness: true
end
