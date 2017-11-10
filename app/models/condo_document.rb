class CondoDocument < ApplicationRecord
  belongs_to :hoa
  mount_uploader :document, DocumentUploader
end
