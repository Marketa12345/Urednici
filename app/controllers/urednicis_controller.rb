class UrednicisController < ApplicationController
  before_action :set_urednici, only: [:show, :edit, :update, :destroy]

  # GET /urednicis
  # GET /urednicis.json
  def index
    @urednicis = Urednici.all
   # @urednicis = Urednici.search(params[:search])
  end

  
#def search
#@search = Urednici.search(params[:q])
#@urednici = @search.result
#end


  # GET /urednicis/1
  # GET /urednicis/1.json
  def show

    #@review = Review.where(urednici_id: @urednici.id).order("created_at DESC")


    @avg_review = @urednici.reviews.average(:rating).to_f.round(2)
  
end
 


  # GET /urednicis/new
  def new
    @urednici = Urednici.new
  end

  # GET /urednicis/1/edit
  def edit
  end

  # POST /urednicis
  # POST /urednicis.json
  def create
    @urednici = Urednici.new(urednici_params)

    respond_to do |format|
      if @urednici.save
        format.html { redirect_to @urednici, notice: 'Úředník byl úspěšně přidán' }
        format.json { render :show, status: :created, location: @urednici }
      else
        format.html { render :new }
        format.json { render json: @urednici.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urednicis/1
  # PATCH/PUT /urednicis/1.json
  def update
    respond_to do |format|
      if @urednici.update(urednici_params)
        format.html { redirect_to @urednici, notice: 'Úředník byl úspěšně aktualizován' }
        format.json { render :show, status: :ok, location: @urednici }
      else
        format.html { render :edit }
        format.json { render json: @urednici.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urednicis/1
  # DELETE /urednicis/1.json
  def destroy
    @urednici.destroy
    respond_to do |format|
      format.html { redirect_to urednicis_url, notice: 'Úředník byl úspěšně smazán' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urednici
      @urednici = Urednici.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urednici_params
      params.require(:urednici).permit(:name, :surname, :street, :city, :zip)
    end
end
