class Api::V2::CharacterssController < ApplicationController
	def index
		@characters = Character.all
	end

	def create
		@character = Character.create(
																	first_name: params[:first_name], 
																	house: params[:house], 
																	city: params[:city])
		render :show
	end

	def show
		@character = Character.find_by(params[:id])
	end

	def edit
		
	end

	def destroy
		character = Character.find(params[:id])
		character.destroy

		redirect_to "/characters"
	end
end
