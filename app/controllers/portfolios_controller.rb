class PortfoliosController < ApplicationController

	def index
	  @portfolio_items = Portfolio.all
	end 

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

	def new
	  @portfolio_items = Portfolio.new
    3.times{ @portfolio_items.technologies.build }
	end 

	def create
    @portfolio_items = Portfolio.new(portfolio_params)

    respond_to do |format|

      if @portfolio_items.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio was successfully created.' }
      
       else
         format.html { render :new }
       end
      end
  end

    def edit
    	@portfolio_items = Portfolio.find(params[:id])
    end

    def update
    	@portfolio_items = Portfolio.find(params[:id])

      respond_to do |format|

        if @portfolio_items.update(portfolio_params)
          format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' } 
         else
           format.html { render :edit }
         end
        end
    end

    def show
    	 @portfolio_items = Portfolio.find(params[:id])
    end

    def destroy
      @portfolio_items = Portfolio.find(params[:id])

      @portfolio_items.destroy

    respond_to do |format|
      format.html { redirect_to portfolio_path, notice: 'Record was remuve.' }
      format.json { head :no_content }
    end
  end
  
  private 
  
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end 

end