class ItemsController < Sinatra::Base

    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'
    
    # Retreiving all items
    get "/items" do
        items = Item.all
        items.to_json
    end
    
    # Retreiving all reviews for a specific item, by item ID number
    get "/items/:id/reviews" do
        reviews = Item.find(params[:id]).reviews
        reviews.to_json
    end

    # Retreive a specific item by ID number
    get "/items/:id" do
        item = Item.find(params[:id])
        item.to_json
    end

    # Post a new item
    post "/items" do
        item = Item.create(
            name: params[:name],
            description: params[:description],
            image_url: params[:image_url],
            price: params[:price],
            owner_id: params[:owner_id]
        )
        item.to_json
    end

    # Delete an item by ID number
    delete "/items/:id" do
        item = Item.find(params[:id])
        item.destroy
    end
    
end