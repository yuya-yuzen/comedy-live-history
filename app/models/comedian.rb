class Comedian < ApplicationRecord
  has_many :performers, dependent: :destroy
  has_many :live, through: :performers
end
