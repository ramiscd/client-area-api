class ApplicantsStatusHistory < ApplicationRecord
  belongs_to :application
  belongs_to :status
end
