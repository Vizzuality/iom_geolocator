class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin
    authenticate_or_request_with_http_basic("Whatever") do |name, password|
      name == "ngo" && password == "ngo.pass.g30"
    end
  end
end