class ArtistsController < ApplicationController

   
   def edit 
    @artist = Artist.find(params[:id])
    
   end 

   def new 
    
    @artist = Artist.new 
    
  end 
   
  def show 
    @artist = Artist.find(params[:id])
   end 

   def create 
    @artist = Artist.new(param_helper)
    @artist.save
    redirect_to (@artist)
   end 


    def update 
    @artist = Artist.find(params[:id])
    @artist.update(param_helper)
    redirect_to (@artist)
    end 

    private 

    def param_helper

    params.require(:artist).permit(:name, :bio)

    end 
    
end
