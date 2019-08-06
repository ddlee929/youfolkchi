class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def signed_in_root_path(scope_or_resource)
    pages_admin_url
  end

  def after_sign_out_path_for(resource_or_scope)
    pages_admin_url
  end

  def executeIfAdmin(&action)
    unless current_user.admin? or current_user.email == 'ddlee929@gmail.com'
      render :template => 'pages/access_denied'
      # redirect_to pages_access_denied_path
      # render :js => "alert('access denied')"
    else
      action.call()
    end
  end
end
