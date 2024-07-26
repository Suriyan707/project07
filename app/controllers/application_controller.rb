class ApplicationController < ActionController::Base
    before_action :authenticate_user!, only: [:index, :show]
    include Devise::Controllers::Helpers
  def index
    
  end

  def show
    
  end
end
