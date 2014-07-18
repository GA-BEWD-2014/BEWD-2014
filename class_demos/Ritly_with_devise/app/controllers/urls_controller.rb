class UrlsController < ApplicationController
  before_filter :is_superuser?, :only => :new
  # use this only if you have two different models
  # use different user models only if
  # 1) you are changing the experience, not just the content
  # 2) you are adding supplemental information to the different user models
  #before_action :is_logged_in

  def new
    @url = Url.new
  end

  def create
    safe_url_params = params.require(:url).permit(:link)
    @url = Url.new safe_url_params
    @url.hash_code = rand(1..1000000)

    # For the bonus
    # @url.hash_code = SecureRandom.urlsafe_base64(8)

    @url.save

    # Or create it in one shot by merging the random parameter into the safe params hash
    # @url = Url.create safe_url_params.merge(hash_code: SecureRandom.urlsafe_base64(8))
    redirect_to @url
  end

  def show
    @url = Url.find params[:id]
    @full_path = "#{request.protocol}#{request.host_with_port}/#{@url.hash_code}"
  end

  def redirector
    @url = Url.find_by hash_code: params[:code]
    if @url
      redirect_to @url.link
    else
      redirect_to root_path
    end
  end

  def preview
    @url = Url.find_by hash_code: params[:code]
    unless @url
      redirect_to root_path
    end
  end

  def is_superuser?
    if current_user.superuser?
      true
    else
      redirect_to root_path
    end
  end

  def is_logged_in
    redirect_to root_path unless user_signed_in? or admin_signed_in?
  end

end
