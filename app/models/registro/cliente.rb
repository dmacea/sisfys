class Registro::Cliente < ActiveRecord::Base
  	
  	belongs_to :tipoIdentidad
  	belongs_to :parroquia
 
	def self.search(page = 1 , search , sort)
	    search ||= ""
	    sort ||= "" 
	    if search.empty? 
	      paginate(page: page).order(sort) rescue paginate(page: 1) 
	    else
	      paginate(page: page).where("#{sort} like ?","%#{search}%").order("#{sort} asc")
	    end 
	end   	

	self.per_page = 10 
end
