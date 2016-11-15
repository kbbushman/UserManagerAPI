class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session #prevent auth token for api
end
