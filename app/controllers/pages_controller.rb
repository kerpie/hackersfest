class PagesController < ApplicationController
  def index
  	@people = Participant.count
  end

  def cool_guys
  	@people = Participant.all
  end
end