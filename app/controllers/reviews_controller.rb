class ReviewsController < Sinatra::Base
    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'

    # Retreiving all reviews
    get "/reviews" do
        reviews = Review.all
        reviews.to_json
    end

    # Retrieving one particular review by ID number
    get "/reviews/:id" do
        review = Review.find(params[:id])
        review.to_json
    end

    # Post a new review
    post "/reviews" do
        review = Review.create(
            body: params[:body],
            rating: params[:rating],
            item_id: params[:item_id],
            reviewer_id: params[:reviewer_id]
        )
        review.to_json
    end

    # Delete an existing review by ID number
    delete "/reviews/:id" do
        review = Review.find(params[:id])
        review.destroy
    end



end