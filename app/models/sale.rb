class Sale < ActiveRecord::Base
  attr_accessor :pedal_name
  
  belongs_to :pedal 

  validates :pedal, presence: true
  validates :email, presence: true
  validates :shipping_address, presence: true
end
