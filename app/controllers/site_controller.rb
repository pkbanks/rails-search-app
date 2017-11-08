class SiteController < ApplicationController
  def search
  	# @artist = Artist.find_by(name: params[:term])
  	# @artists = Artist.where("name like '%#{params[:term]}%'")
  	unless params[:term].nil?
	  # 	@artists = Artist.where("name like ?", "%#{params[:term]}%")
	  	# end	
	  	artists = Artist.where("name like ?", "%#{params[:term]}%") # search for artists
	  	albums = Album.where("name like ?", "%#{params[:term]}%")#search for albums
	  	labels = Label.where("name like ?", "%#{params[:term]}%")#search for labels
	  	@results = artists + albums + labels
  	end
  end
end
