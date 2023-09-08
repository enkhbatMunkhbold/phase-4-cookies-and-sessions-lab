class SessionsController < ApplicationController

  def index
    byebug
    session[:page_view] ||= 0
    cookies[:page_view] ||= 0
    render json: { session: session, cookies: cookies.to_hash}
  end

end
