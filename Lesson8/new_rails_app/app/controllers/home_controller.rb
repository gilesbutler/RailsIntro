class HomeController < ApplicationController

  def index
    #render :layout => false
  end

  def healthcheck
    render :text => "OK", :status => 200
    #render :json => {:status => "OK", :message => "All fine here"}, :status => 200
  end

  def greeting
    @name = params[:name]
  end
end