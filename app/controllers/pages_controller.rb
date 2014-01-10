class PagesController < ApplicationController
  def index
  end

  def cool_guys
  	@people = Participant.all
  end
end