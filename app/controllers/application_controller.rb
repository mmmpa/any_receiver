class ApplicationController < ActionController::Base
  def get
    render_json
  end


  def post
    render_json
  end


  def put
    render_json
  end


  def patch
    render_json
  end


  def delete
    render_json
  end


  private
  def render_json
    render json: passed_params
  end


  def passed_params
    params.delete(:controller)
    params.merge!(method: params.delete(:action))
    params
  end
end
