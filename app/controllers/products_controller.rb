class ProductsController < ApplicationController
#layout "productlayout" , except: [:index]
  
def index

	@products = Product.all
end


 def add
 	 @product = Product.new
 	 render '_form'
 end

 def show
		 @product = Product.find(params[:id])
end
def reviews
	end

def view
	end

def analyseComment(text)

	uri = URI.parse("http://text-processing.com/api/sentiment/")

	http = Net::HTTP.new(uri.host, uri.port)

	request = Net::HTTP::Post.new(uri.request_uri)
	request.set_form_data({"text" => text})

	response = http.request(request)
	ss=  response.body
	ss
	# require 'json'
	ss = JSON.parse ss

	ss["label"]
 	
 end
 def create
 	@product =  Product.new(product_params)
		if @product.save
			 # get only the filename, not the whole path (from IE)
  			 
  			redirect_to Product
  		else
  			render '_form'
  		end
 end




 private
		def product_params
			params.require(:product).permit(:name,:image)	
		end

end
