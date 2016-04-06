require "pry"
require "sinatra"

# Your routes go here:
get "/" do
	"hello jay"	
end	

get "/shouted-greeting/Andrew" do
	"HELLO ANDREW!"
end

get "/shouted-greeting/:greeting/:name" do
	@greeting = params["greeting"].capitalize
	@name = params["name"].capitalize
	"#{@greeting}, #{@name}!"
end

get "/shouted-greeting-b" do
	"HELLO, #{params['name'].upcase}"
end

get "shouted-greeting-b?" do
	"#{:greeting}.upcase, #{:name}.upcase  "
end

get "/even-or-odd-b/:num" do
	@num = params['num'].to_i
	if @num.odd? == true
		"#{@num} is odd"
	else
		"#{@num} is even"
	end
end

get "/triangle/:num1/:num2/:num3" do
	@num1 = params['num1'].to_i
	@num2 = params['num2'].to_i
	@num3 = params['num3'].to_i
	if @num1 + @num2 <= @num3
		"A triangle with lenght of #{@num1}, #{@num2}, #{@num3} is good"
	else
		"A triangle with lenght of #{@num1}, #{@num2}, #{@num3} is bad"
	end
end
