# require 'redis-store'
# Be sure to restart your server when you modify this file.

# Catapult::Application.config.session_store :cookie_store, key: '_spine.rails3_session'
Catapult::Application.config.session_store :redis_store

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Catapult::Application.config.session_store :active_record_store
