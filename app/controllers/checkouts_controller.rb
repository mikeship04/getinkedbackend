class CheckoutsController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        ticket = Ticket.find(params[:id])
        session_stripe = Stripe::Checkout::Session.create({
            payment_method_types: ['card'],
            line_items: [{
                price_data: {
                    currency: 'usd',
                    unit_amount: ticket.price_in_cents,
                    product_data: {
                        name: ticket.name,
                    },
                },
            quantity: 1
            }],
            mode: 'payment',
            success_url: 'http://localhost:3000/getInkedFE/Profile',
            cancel_url: 'http://localhost:3000/getInkedFE/BuyTickets',
        })
        puts session_stripe.url
        render json:({'url': session_stripe.url})
        # redirect_to session_stripe.url, allow_other_host: true
    end

end
