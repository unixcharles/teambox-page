class SettingsController < ApplicationController
  before_filter :find_pages

  PARTS = [:page, :stylesheet, :divider, :note, :upload, :navigation]

  def edit
    @part = if params[:part] and PARTS.include? params[:part].to_sym
      params[:part]
    end
  end

  def update
    @setting.write_attributes(params)
    @setting.save

    @current_user.fetch_pages(@setting.project_id) unless params[:part]

    redirect_to settings_path(params[:part])
  end
end
