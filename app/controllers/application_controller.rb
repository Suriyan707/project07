class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:index, :show]

  def index
    
  end

  def show
    
  end
end
