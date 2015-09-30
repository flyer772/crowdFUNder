class User < ActiveRecord::Base
  authenticates_with_sorcery!
   has_many :pledges
   has_many :backed_projects, class_name: "Project", through: :pledges
   has_many :owned_projects, class_name: "Project", foreign_key: "owner_id"
   has_many :rewards, through: :pledges
end
