if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_lfc_portal_authentication_", domain: "https://lfc-portal.herokuapp.com/"
else 
  Rails.application.config.session_store :cookie_store, key: "_lfc_portal_authentication_"
end