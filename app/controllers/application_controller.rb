class ApplicationController < ActionController::Base
  # include ActionController::Serialization
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  include Response
  include ExceptionHandler

  private
end
