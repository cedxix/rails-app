class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource

  def current_user
    super ||
  end
end
