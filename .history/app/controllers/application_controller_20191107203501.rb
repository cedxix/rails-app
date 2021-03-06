class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource

  def current_user
    super || OpenStruct.new(
      name: 'Anonymous',
      first_name: 'Guest',
      last_name: ''
    )
  end
end
