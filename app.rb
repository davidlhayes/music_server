require 'bundler'
Bundler.require()

def fake_song(title, release_year, artist)
  {:title => title.to_s, :release_year => release_year.to_s,
      :artist => artist.to_s}.to_json
end

get '/' do
  cross_origin
  fake_song('Sample Song',2000,'Sample Artist')
end

get '/api/she_loves_you' do
  cross_origin
  fake_song('She Loves You',1964,'Beatles')
end

get '/api/jump' do
  cross_origin
  fake_song('Jump',1983,'Van Halen')
end

get '/api/money' do
  cross_origin
  fake_song('Money',1982,'Pink Floyd')
end
