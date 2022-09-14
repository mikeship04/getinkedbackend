# class WebhookController < ApplicationController
#     skip_before_action :authorized, only: [:create]
#     SECRET = ENV['WEBHOOK_SECRET']
#     require 'json'

#     def create
#         payload = request.body.read
#         event = nil
#         begin
#             event = Stripe::Event.construct_from(JSON.parse(payload, symbolize_names: true))
#             rescue JSON::ParserError => e
#             # Invalid payload
#             puts "⚠️  Webhook error while parsing basic request. #{e.message})"
#             status 400
#         return
#     end
#     puts 1111111111111
#     puts payload2
#     puts 1111111111111
#     puts payload2.class
#     puts 1111111111111
#         if SECRET
#             signature = request.env['HTTP_STRIPE_SIGNATURE']
#             puts 1111111111111
#             puts signature
#             begin
#                 event = Stripe::Webhook.construct_event(payload2, signature, SECRET)
#             rescue Stripe::SignatureVerificationError
#                 puts "!! webhook signature verification failed"
#                 status 400
#             end
#             puts 11111111111111111
#             puts event.type
#             puts 11111111111111111
#             puts event
#         end

    #     case event.type
    #     when 'payment_intent.created'
    #         payment_intent = event.data.object
    #         fulfill_order(payment_intent)
    #     else
    #         puts "Unhandled event type #{event.type}"
    #     end

    #     def fulfill_order(payment_intent)
    #         puts "Payment for #{payment_intent['amount']} succeeded." 
    #     end
    #     status 200
#     end
# end