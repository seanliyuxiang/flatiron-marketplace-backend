class UsersController < Sinatra::Base

    # Add this line to set the Content-Type header for all responses
    set :default_content_type, 'application/json'

    # retreiving all users
    get "/users" do
        users = User.all
        users.to_json
    end

end