class Hoa < ApplicationRecord
  has_many :condo_documents
  has_many :hoa_memberships
  has_many :users, through: :hoa_memberships

  validates_presence_of :name
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
  validates_presence_of :units
end
