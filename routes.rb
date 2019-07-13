get '/hello' do
  'Hello world!'
end

get '/users/:id' do
	id = params[:id]
	@user = User.find(id)
	"Hello, #{@user.salutation}"
	erb :"users/show"
end

get '/users' do
  @users = User.all
  erb :"users/index"
end