Rails.configuration.strip = {
    :publishable_key => ENV['PUBLIISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.strip[:secret_key]