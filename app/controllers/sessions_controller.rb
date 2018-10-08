class SessionsController < ApplicationController

  def create
    guest = Guest.find_by(code: params[:code])

    if guest.nil?
      redirect_to "/not_invited" and return
    end
    session[:guest_id] = guest.id

    redirect_to "/"
  end

end
