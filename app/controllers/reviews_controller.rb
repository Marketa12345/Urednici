class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy, :confirm]
  before_action :set_urednici
  before_action :authenticate_user!
  


  def new
    @review = Review.new
  end


  def edit
  end


  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.urednici_id = @urednici.id

      if @review.save
        redirect_to @urednici
      else
        render 'new'
    end
  end

    def update
      @review.update(review_params)
    end

    def destroy
      @review.destroy
      redirect_to root_path
    end


  #def confirm

    #@review.confirmed = true
    #@review.save
    #redirect_to ta stranka s vypisy

  #end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_review
      @review = Review.find(params[:id])
    end

    def set_urednici
      @urednici = Urednici.find(params[:urednici_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :comment)
    end


end
