class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_header_link

  def about
  end

private
  def set_header_link
    @header_link ||= root_path
  end
end
