# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_PFPB_session',
  :secret      => 'aa5e8b8812665f939c4091af9534b3e0eda8a7426a241b8e6ef11f4f3b78d76827cc31d603ccd700f0030266af84178b826b2510c99368617a51a7eec95225cc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
