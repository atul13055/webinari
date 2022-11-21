class Workshop < ApplicationRecord
  
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :bookings 
  has_many :customers, through: :bookings

  validates :name, :description ,presence: true
  validates :start_date, :end_date, :start_time, :end_time, presence: true
  validates :total_sits, :registration_fee, presence: true, numericality: true
  validates :end_date, comparison: { greater_than: :start_date, message: 'Can not be before start date'}

  # scope :upcoming_workshops, -> { where ('start_date > ?', Date.today)}

  # scope :past_workshops, -> { where ('end_date < ?', Date.today)}

  def total_duration
    "From #{start_date}  To  #{end_date}"
  end

  def daily_workshop_hour
    "#{((start_time.to_time - end_time.to_time)/1.hours).abs} hours"
  end

  def daily_duration
    "Everyday #{start_time} to #{end_time} (#{daily_workshop_hour})"
  end

  def is_upcoming_workshop?
    start_date >= Date.today
  end
  #class Methos same work for scope method
  def self.upcoming_workshops
    where('start_date > ?', Date.today)
  end

  def self.past_workshops
    where('end_date < ?', Date.today)
  end
end
