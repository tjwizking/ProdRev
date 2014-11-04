class ReviewsController < ApplicationController
#layout "reviewlayout"
	def new
		@review = Review.new		
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

	@prod = Product.find(params[:product_id])
	@review = @prod.reviews.new(review_params)
	
	a = analyseComment(@review.comment)
	if a== "neutral"
		@review.review_type =2
	elsif a== "pos"
		@review.review_type =1
	elsif a == "neg"
		@review.review_type =0
	
	end

	@review.save
    redirect_to root_path
	
 end

 def show
 end


private
    def review_params
    	params.require(:review).permit(:comment,:review_type)
    end
end
