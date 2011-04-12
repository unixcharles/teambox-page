class RoutesController < ApplicationController
  skip_before_filter :find_current_user, :only => :show

  before_filter :find_route, :except => [:index, :new, :create, :show]
  before_filter :find_pages, :except => :show

  def show
    @route = if params[:permalink].nil?
      @setting.routes.where(root_page: true, enabled: true).first
    else
      @setting.routes.where(permalink: params[:permalink], enabled: true).first
    end
    
    return head :not_found if @route.page.nil?

    expires_in @setting.cache_expiration.to_i.hour, :public => true
    render :text => @route.page.to_s
  end

  def index
    @routes = @setting.routes.all
  end

  def new
    @route = @setting.routes.new
  end

  def edit
  end

  def create
    @route = @setting.routes.new(params[:route])
    @route.save

    redirect_to routes_path
  end

  def update
    @route.update_attributes(params[:route])

    redirect_to routes_path
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  protected
  def find_route 
    @route = @setting.routes.find(params[:id])
  end
end
