module ApplicationHelper
  def sample_helper
    "<p>My Helper</p>".html_safe
  end

  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path) + " | " + (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def source_helper(layout_name)
    if session[:source]
      content_tag(:p, "Thanks for visiting me from #{session[:source]} | #{layout_name}")
    end
  end
end
