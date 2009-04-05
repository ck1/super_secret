# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_super_secret_session',
  :secret      => 'f49ca0ba83c2cec1d9a142b3985e3b6b50fcaaf846ee7ea47d5df5f46243b8dcfe016bf4f0bdf49855e98da6d3dc2915ba9ce0d9cfc7c777a2e340bd7436637b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
