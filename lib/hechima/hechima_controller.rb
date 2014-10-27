class HechimaController < ApplicationController
	def index
		render "/#{params[:file]}"
	end
end