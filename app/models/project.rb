class Project < ApplicationRecord
  belongs_to :hoa
  validates_presence_of :title, :description
end
