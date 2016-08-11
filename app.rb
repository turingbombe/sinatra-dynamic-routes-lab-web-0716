require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    @num *= @num
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = []
    @sentence << params[:word1]
    @sentence << params[:word2]
    @sentence << params[:word3]
    @sentence << params[:word4]
    @sentence << params[:word5]
    "#{@sentence.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    erb :operation
  end
end