class Application < ApplicationRecord
  belongs_to :user
  belongs_to :form
  has_many :status
  has_many :status_change
end
