module CurrentUserConcern
  extend ActiveSupport::Concern

  protected

  def current_user
    super || guest_user
  end
  def guest_user
    guest = GuestUser.new
    guest.name = 'Guest User'
    guest.first_name = 'Guest'
    guest.lastn_name = 'User'
    guest.email = 'guest@anonymous.com'
    guest
  end
end
