class Patient < ActiveRecord::Base
  attr_accessible :city, :date_of_birth, :email, :house_number, :name, :phone, :street, :surname, :zip
end
