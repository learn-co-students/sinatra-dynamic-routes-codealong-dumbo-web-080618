require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  get '/goodbye/:name' do

    @specific_name = params[:name]
    "Goodbye, #{@specific_name}."
  end
  # Code your final two routes here:
  get '/multiply/:num1/:num2' do
  @multiples1 = params[:num1].to_i #we need to turn string into integer for above and below
  @multiples2 = params[:num2].to_i
  @product = @multiples1 * @multiples2
  # binding.pry
  "#{@product}"
  end
end
