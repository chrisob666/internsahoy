class RegistrationsController < Devise::RegistrationsController
protected

  # Redirects the user to the appropriate page after registering
  def after_sign_up_path_for(user)
    @user_type = current_user.user_type

    if @user_type == "student"
      "/student_profiles/new"

    elsif @user_type == "company"
      "/company_profiles/new"

    elsif @user_type == "admin"
      root_path
    else
    end
  end
end
