class Performer < ApplicationRecord
  belongs_to :live
  belongs_to :comedian
end
