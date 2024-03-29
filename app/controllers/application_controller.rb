require "#{Rails.root}/lib/debug.rb"

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  after_action :set_dsei_and_pdsi, if: :devise_controller?, only: [:create]

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :determine_layout

  def health
    render text: "I'm OK"
  end

  def image_upload
    file = File.join('public', 'images', params[:image].original_filename)
    tmp  = params[:image].tempfile
    FileUtils.cp tmp, file

    render json: { link: "/images/#{params[:image].original_filename}" }
  end

  def check_admin_actions
    return if current_user.admin?
    redirect_to root_path, flash: { error: 'Este usuário não possui privilégios suficientes para esta ação.' }
  end

  def check_sesai_central_actions
    return if current_user.sesai_central?
    redirect_to root_path, flash: { error: 'Este usuário não possui privilégios suficientes para esta ação.' }
  end

  def set_dsei_and_pdsi
    return unless current_user.dsei?
    session[:dsei] = current_user.dsei_id
    session[:pdsi] = current_user.dsei.pdsi.id
  end

  def set_dsei_and_pdsi_to_sesai
    dsei = Dsei.find params[:session][:dsei_id]
    session[:dsei] = dsei.id
    session[:pdsi] = dsei.pdsi.id

    redirect_to pdsis_path
  end

  def unset_dsei_and_pdsi_to_sesai
    session[:dsei] = nil
    session[:pdsi] = nil

    redirect_to root_path
  end

  def current_dsei
    view_context.current_dsei
  end

  def current_pdsi
    view_context.current_pdsi
  end

  private

  def determine_layout
    current_user ? 'private' : 'public'
  end
end
