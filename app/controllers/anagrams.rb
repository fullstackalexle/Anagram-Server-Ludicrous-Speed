get '/' do
	erb :"anagrams/index"
end

post '/' do
	puts params[:word]
	@word = params[:word]
	redirect "/#{@word}"
end

get '/:word' do
  @word = params[:word]
  @list = Word.where(word: @word).first.anagrams
  # Look in app/views/anagrams/index.erb
  erb :"anagrams/show"
end
