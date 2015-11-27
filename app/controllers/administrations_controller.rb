class AdministrationsController < ApplicationController

before_action :set_review, only: [:show]


	def index

	@reviews = Review.where(confirmed:false)

	end




private

	def set_review
      @review = Review.find(params[:id])
    end


    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
