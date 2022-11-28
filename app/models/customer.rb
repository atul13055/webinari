class Customer < ApplicationRecord
	  has_many :bookings , dependent: :destroy
      has_many :workshops, through: :bookings,  dependent: :destroy
      has_many :refunds, dependent: :destroy

	validates :full_name, :contact_number, presence: true
	validates :email_id, presence:true, uniqueness: true 
end
