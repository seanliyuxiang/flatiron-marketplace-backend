class ReviewsController < Sinatra::Base
    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'

    # retreiving all reviews
    get "/reviews" do
        reviews = Review.all
        reviews.to_json
    end

    # retrieving one particular review
    get "/reviews/:id" do
        review = Review.find(params[:id])
        review.to_json
    end


end