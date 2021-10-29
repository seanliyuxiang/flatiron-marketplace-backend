class UsersController < Sinatra::Base

    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'

    # Retreiving all users
    get "/users" do
        users = User.all
        users.to_json
    end

    # Retrieving one particular user by ID number
    get "/users/:id" do
        user = User.find(params[:id])
        user.to_json
    end

end