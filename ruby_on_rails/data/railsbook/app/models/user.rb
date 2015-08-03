class User < ActiveRecord::Base
  validates :agreement, acceptance: true { on: :create }
  validates :email, confirmation: true
  validates :email, presence: { if: '!dm.blank?' }
end
