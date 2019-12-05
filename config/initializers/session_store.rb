# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :active_record_store, key: '_faculty-vote-app_session'

# The below code can likely be deleted. This is a template just in case we need to handle sessions differently between prod and dev
# if Rails.env == 'production'
#     Rails.application.config.session_store :active_record_store, key: '_faculty-vote-app_session', domain: 'shielded-scrubland-95680.herokuapp.com/'
# else
#     Rails.application.config.session_store :active_record_store, key: '_faculty-vote-app_session'
# end