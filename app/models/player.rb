class Player < ActiveRecord::Base
  #handles storing salt_hash for Player password
  has_secure_password

  validates :name, presence: true
  validates :credits, presence: true
  validates :lifetime_spins, presence: true
end
