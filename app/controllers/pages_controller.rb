class PagesController < ApplicationController
  def show
    @page = @setting.pages.where(page_id: params[:id]).first
    render :text => @page.to_s
  end

  def fetch
    @current_user.fetch
  end
end
