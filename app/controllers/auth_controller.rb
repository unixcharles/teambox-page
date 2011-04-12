class AuthController < ApplicationController
  skip_before_filter :find_current_user, :redirect_to_login

  def login
    return redirect_to settings_url if @current_user = @setting.users.where(token: session[:user_token]).first
    render :layout => 'login'
  end

  def logout
    session[:user_token] = nil
    redirect_to login_url
  end

  def callback
    reponse = Hashie::Mash.new(request.env['omniauth.auth'])

    if user = @setting.create_or_update_user_by_teambox_auth(reponse)
      user.fetch_projects
      session[:user_token] = user.token
      redirect_url = settings_url
    else
      flash[:error] = t("auth.failure.not_authorized")
      redirect_url = login_url
    end

    redirect_to redirect_url
  end

  def failure
    flash[:error] = t("auth.failure.#{params[:message]}")
    redirect_to login_url
  end
end
