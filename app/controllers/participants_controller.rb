class ParticipantsController < ApplicationController
  def index
  	@participants = Participant.all
  end

  def create
    @p = Participant.new
    @tmp = Participant.find_by(fb_id: params[:fb_id])

    if(@tmp.nil?)
    	@p.name = params[:name]
    	@p.fb_id = params[:fb_id]
    	@p.email = params[:email]
    	@p.gender = params[:gender]
    	@p.image = params[:image]
    	@p.username = params[:username]
    	@p.suggestion = params[:suggestion]
    else
      @p = @tmp
      @p.suggestion = params[:suggestion]
    end

    if(@p.save)
      @status = true
    else
      @status = false
    end

  	respond_to do |format|
  		format.js
  	end

  end

  def check_if_registered
    @p = Participant.find_by(fb_id: params[:fb_id])
    @message = @p.nil? ? "Registrate" : @p.message_to_show
    respond_to do |format|
      format.js
    end
  end

end
