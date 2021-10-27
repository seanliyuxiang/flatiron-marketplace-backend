class ItemsController < Sinatra::Base

    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'
    
    # just getting all items
    get "/items" do
        items = Item.all
        items.to_json
    end
    
end