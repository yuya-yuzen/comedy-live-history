class Live < ApplicationRecord
  has_many :performers, dependent: :destroy
  has_many :comedians, through: :performers

  scope :recent, -> { order(date: :desc) }

  def display_name
    "#{date} #{name}"
  end
end
