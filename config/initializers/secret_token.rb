# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Tagmar::Application.config.secret_key_base = ENV['SECRET_TOKEN'] || 'ed28b53257cea260b6a18b28e89bfa79144761c2f813f50e9b3d25ea49d1f3150a3137fac8f7dadde79773a56031e7d58194450ca07704e9639e57c3ddf7ad42'
