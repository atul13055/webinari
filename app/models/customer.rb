class Customer < ApplicationRecord
	  has_many :bookings 
      has_many :workshops, through: :bookings
      has_many :refunds

	validates :full_name, :contact_number, presence: true
	validates :email_id, presence:true, uniqueness: true 
end
