require "pry"
require "sinatra"

# Your routes go here:
get "/" do
	erb :root_path
end

get "/hello/:name" do
	@name = params['name']
	erb :hello
end

get "/scream/:num" do
	@num = params['num'].to_i
	erb :scream
end