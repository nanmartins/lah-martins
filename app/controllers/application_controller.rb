class ApplicationController < ActionController::Base

  add_flash_types :success, :warning, :danger, :info, :alert, :notice
end
