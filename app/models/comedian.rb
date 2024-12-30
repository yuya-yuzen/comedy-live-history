class Comedian < ApplicationRecord
  has_many :performers, dependent: :destroy
  has_many :live, through: :performers

  scope :most_seen, -> { joins(:performers).group(:id).order('COUNT(performers.id) DESC') }
end
