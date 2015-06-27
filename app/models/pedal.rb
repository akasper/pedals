class Pedal < ActiveRecord::Base
  # before_create :set_alt_id

  validates :name, presence: true
  validates :name, length: { minimum:2, maximum:255 }

  # validates :alt_id, uniqueness: true
  #
  validates :min_price, presence: true
  validates :min_price, numericality: { greater_than: 0.0}

  validates :max_price, presence: true
  validates :max_price, numericality: { greater_than: 0.0}

  # def set_alt_id
  #   self.alt_id ||= self.name.downcase.gsub(/\s+/, '-')
  # end
end
