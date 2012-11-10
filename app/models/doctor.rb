class Doctor < ActiveRecord::Base
  attr_accessible :name, :phone, :surname
  validates :name, :phone, :surname, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: {
    minimum: 9,
    maximum: 9
  }
  validates :name, :surname, length: {
    maximum: 30
  }
end
