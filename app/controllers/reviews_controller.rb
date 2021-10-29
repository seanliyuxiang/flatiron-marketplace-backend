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

    # post a new review
    post "/reviews" do
        review = Review.create(
            body: params[:body],
            rating: params[:rating],
            item_id: params[:item_id],
            reviewer_id: params[:reviewer_id]
        )
        review.to_json
    end

    # delete an existing review
    delete "/reviews/:id" do
        review = Review.find(params[:id])
        review.destroy
    end



end