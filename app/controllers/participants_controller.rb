class ParticipantsController < ApplicationController
  def index
  	@participants = Participant.all
  end

  def create

  	@p = Participant.new
  	@p.name = params[:name]
  	@p.fb_id = params[:fb_id]
  	@p.email = params[:email]
  	@p.gender = params[:gender]
  	@p.image = params[:image]
  	@p.username = params[:username]
  	@p.suggestion = params[:suggestion]

  	if(@p.save)
  		@status = true
  	else
  		@status = false
  	end

  	respond_to do |format|
  		format.js
  	end

  end
end
