class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :admin_user
end
