class TvSet < ApplicationRecord
  validates :name, :price, :multimedia, :size, presence: true
  validates :name, uniqueness: true
end
