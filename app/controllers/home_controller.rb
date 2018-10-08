class HomeController < ApplicationController

  before_action :verify_current_guest, only: [:index]

  def index
  end

end
