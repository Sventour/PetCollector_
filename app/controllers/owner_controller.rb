class OwnerController < ApplicationController
	
	def index
		@owners = Owner.all
	end
	
	def new
		@owner = Owner.new()
	end
	
	def create
		@owner = Owner.new(owner_params)
		if @owner.save
			redirect_to '/owners'
		else
			render '/new'
		end
	end
	
	def edit
		@owner = Owner.find(params[:id])
	end
	
	def update 
		@owner = Owner.find(params[:id])
		if @owner.update_attributes(owner_params)
			redirect_to(:action => 'show', :id => @owner.id)
		else
			render 'edit'
		end	
	end
	
	def show
		@owner = Owner.find(params[:id])
		@pets = @owner.pets
	end 
	
	private
	def owner_params
		params.require(:owner).permit(:firstname,:lastname,:summary)
	end
end
