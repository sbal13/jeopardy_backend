class CategoriesController < ApplicationController
	def index
		selected_categories = []
		6.times{ selected_categories << Category.all.shuffle!.pop}

		render json: selected_categories, status: 201
	end
end
