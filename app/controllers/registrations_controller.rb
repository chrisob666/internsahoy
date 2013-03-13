class RegistrationsController < Devise::RegistrationsController
protected

  # Redirects the user to the appropriate page after registering
  def after_sign_up_path_for(user)
    user_type = current_user.user_type

    if user_type == "student"
      new_student_profile_url

    elsif user_type == "company"
      new_company_profile_path

    elsif user_type == "admin"
      admin_root_url
    else
    end
  end

  def after_update_path_for(user)
    after_sign_in_path_for(user)
  end

end
