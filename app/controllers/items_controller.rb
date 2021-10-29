class ItemsController < Sinatra::Base

    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'
    
    # just getting all items
    get "/items" do
        items = Item.all
        items.to_json
    end
    
    get "/items/:id/reviews" do
        reviews = Item.find(params[:id]).reviews
        reviews.to_json
    end

    # get a specific item by id
    get "/items/:id" do
        item = Item.find(params[:id])
        item.to_json
    end


    # to add a new item
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

    # to delete an item by id
    delete "/items/:id" do
        item = Item.find(params[:id])
        item.destroy
    end
    
end