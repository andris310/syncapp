class SetupController < ApplicationController

before_filter :auth_user

	def setup
		
	end

	def send_email
		@to = params[:to]
		@subject = params[:subject]
		AMailer.form_email(@to, @subject, params[:body]).deliver
	end

	private
  
  def auth_user
    redirect_to new_user_session_path unless user_signed_in?
  end

end