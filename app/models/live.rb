class Live < ApplicationRecord
  has_many :performers, dependent: :destroy
  has_many :comedians, through: :performers
end