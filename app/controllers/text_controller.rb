class TextController < ApplicationController
  def create
  	@party = Party.find(params[:party_id])
  end
end
