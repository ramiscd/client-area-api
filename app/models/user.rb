class User < ApplicationRecord
  has_many :applications, dependent: :destroy
end
