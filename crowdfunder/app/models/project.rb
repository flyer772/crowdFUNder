class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges, through :rewards
  has_many :users, through :pledges
  belongs_to :owner, class_name: "User"

  # accept_nested_attributes: :rewards

end
