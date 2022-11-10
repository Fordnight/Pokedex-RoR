class ListController < ApplicationController
  def index
    @list = Pokemon.all
  end

  def pokemon
    @name = params[:name]
    @result = Pokemon.find_by name: @name
  end

  def import
    url = 'https://pokeapi.co/api/v2/pokemon?limit=151&offset=0'
    response = RestClient.get url
    result = JSON.parse response.to_str
    @list = []

    result['results'].each do |character|
      response = RestClient.get character['url']
      temp = JSON.parse response.to_str

      Pokemon.create({
                       name: temp['forms'][0]['name'],
                       image: temp['sprites']['versions']['generation-v']['black-white']['animated']['front_default'],
                       abilities: temp['abilities'].map { |ability| ability['ability']['name'] },
                       pokemon_type: temp['types'][0]['type']['name']
                     })
    end
  end
end
