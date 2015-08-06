class PetController < ApplicationController
	def index
		@pets = Pet.all
	end
	
	def show
		@pet = Pet.find(params[:id])
		@user = @pet.user
	end
end
