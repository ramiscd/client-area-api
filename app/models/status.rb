class Status < ApplicationRecord
  belongs_to :application
  has_many :applicants_status_history
end
