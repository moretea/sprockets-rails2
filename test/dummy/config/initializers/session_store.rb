# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dummy_session',
  :secret      => '707d96cac2e22d47aea5be22a337f8d3cf8e3cd902aa703dc435cf837b90dc0f970d99de55eaece5c0053808c8877f775b9fa5402db5c1f6d659143d5c93df25'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
