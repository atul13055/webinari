class Admin::DashboardController < AdminController
 def index
   @workshop_count = Workshop.count
   @upcoming_workshop_count = Workshop.upcoming_workshops.count
   @past_workshop_count = Workshop.past_workshops.count
   @customer_count = Customer.count
   @booking_count = Booking.count
   @revenue_earned = Booking.pluck(:amount_paid).sum

   @refundable_bookings =  @refundable_booking = Booking.includes(:workshop).where('Workshops.start_date >= ?', Date.today).references(:workshops)
   @active_refunds = Refund.includes(:booking).where('bookings.workshop_id IN (?) AND refunds.state = ?', Workshop.upcoming_workshops.ids, 'accepted').references(:booking)
 end
end 