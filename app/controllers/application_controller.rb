class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_guest
    @current_guest ||= Guest.find(session[:guest_id])
  end
  helper_method :current_guest


  def verify_current_guest
    current_guest.present?
    Action.create(guest_id: current_guest.id, description: "#{current_guest.name} logged in")
  rescue
    redirect_to '/not_invited'
  end

end
