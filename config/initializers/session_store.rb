# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flashcards_session',
  :secret      => 'b6ea77b1e226de499a751b9231ff5273e5decfba47a968e3573f4135490261e7baf38c1408ce26b33741a20a5215b46c4550e339bcaa054cec23fbb935adefde'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
